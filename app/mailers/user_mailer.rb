class UserMailer < ActionMailer::Base

	default :from => 'no-reply@osugreenscholars.org'

	def send_confirmation(log)
		@log = log
		mail(:to => "<#{log.email}>", :subject => "Event Log Confirmation - #{@log.id}")
	end

	def send_digest(logs, email)
		@logs = logs

		@email = email
		mail(:to => "<#{email}>", :subject => "GES Log History")
	end

end
