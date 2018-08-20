class UserMailer < ActionMailer::Base

  default :from => 'GES Involvement Tracking <no-reply@osugreenscholars.org>'

  def send_confirmation(log)
    @log = log
    mail(:to => "<#{log.email}>", :subject => "Event Log Confirmation")
  end

  def send_confirmations(log_list)
    @log_list = log_list
    log = @log_list.first
    mail(:to => "<#{log.email}>", :subject => "Event Log Confirmation")
  end

  def send_digest(logs, email)
    @logs = logs

    @email = email
    mail(:to => "<#{email}>", :subject => "GES Log History")
  end

end
