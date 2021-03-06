class TrackEventsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD'], only: :index
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD'], only: :delete_it_all

  def new
    @log = TrackEvent.new
  end

  # show all
  # # TODO batch grab
  def index
    if params[:user].present?
      @user = params[:user].strip.downcase
      @logs = TrackEvent.where email: @user + "@osu.edu"
    else
      @logs = TrackEvent.all
    end

    respond_to do |format|
      format.html
      format.csv { send_data @logs.as_csv }
    end
  end


  def create
    @log = TrackEvent.new(track_event_params)
    @log.email.downcase!

    if @log.valid?
      TrackEvent.transaction do
        if @log.category == 'CSGES'
          @log.category = 'CS'
          ges_log = @log.dup
          ges_log.category = 'GES'

          @log.save
          ges_log.save
          UserMailer.send_confirmations([ges_log, @log]).deliver_now
        else 
          UserMailer.send_confirmation(@log).deliver_now if @log.save
        end
      end
      redirect_to track_events_saved_path
    else
      render 'new'
    end
  end

  def digest
    @log = TrackEvent.new
  end

  def get_digest
    @log = TrackEvent.new(track_event_params)
    @email = @log.email
    unless @email =~ /^[a-z\-]+\.[0-9]+@osu\.edu$/
      @errors = "please enter a lowercase OSU email (without 'buckeyemail')"
      render 'digest'
    else
      @logs = TrackEvent.where(email: @email)
      UserMailer.send_digest(@logs, @email).deliver_now
      redirect_to track_events_sent_path
    end
  end

  def delete_it_all
    TrackEvent.delete_all
    redirect_to track_events_path
  end


  private
  def track_event_params
    params.require(:track_event).permit(:email, :year, :category, :title,
                                        :description, :location, :date,
                                        :start_time, :info, :length,
                                        :contact, :contact_name)
  end

end
