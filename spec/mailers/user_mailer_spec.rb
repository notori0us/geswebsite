require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "send confirmation" do
    let(:event) { build(:track_event) }
    let(:mail) { UserMailer.send_confirmation(event) }

    it 'is going to the right place' do
      expect(mail.subject).to eq "Event Log Confirmation"
      expect(mail.to).to eq [event.email]
    end

    it 'has the correct body' do
      expect(mail.body.encoded).to include(event.title)
      expect(mail.body.encoded).to include(event.category)
      expect(mail.body.encoded).to include(event.title)
      expect(mail.body.encoded).to include(event.date.iso8601)
      expect(mail.body.encoded).to include(event.location)
    end
  end

  describe "send confirmations" do
    let(:events) { [build(:ges_event), build(:cs_event)] }
    let(:mail) { UserMailer.send_confirmations(events) }

    it 'is going to the right place' do
      expect(mail.subject).to eq "Event Log Confirmation"
      expect(mail.to).to eq [events.first.email]
    end

    it 'has the correct body' do
      events.each do |event|
        expect(mail.body.encoded).to include(event.title)
        expect(mail.body.encoded).to include(event.category)
        expect(mail.body.encoded).to include(event.title)
        expect(mail.body.encoded).to include(event.date.iso8601)
        expect(mail.body.encoded).to include(event.location)

        expect(mail.body.encoded).to include(event.length.to_s) if event.category == "CS"
      end
    end
  end

  #  currently I don't have a good way to mock the logs passed to this, since
  #  this method's template uses the active record query interface
  #  describe "send digest" do
  #    let(:logs) { create_list(:track_event, 20) }
  #    let(:mail) { UserMailer.send_digest(logs, logs.first.email) }
  #
  #    it 'is going to the right place' do
  #      expect(mail.subject).to eq "Event Log Confirmation"
  #      expect(mail.to).to eq [logs.first.email]
  #    end
  #  end
end
