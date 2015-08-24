class UserMailer < ActionMailer::Base

	default :from => 'no-reply@osugreenscholars.org'

	def send_confirmation(log)
		@log = log
		mail(:to => "<#{log.email}>", :subject => "Event Log Confirmation")
	end

	def send_digest(logs, email)
		@logs = logs
		@cs_hours = 0
		@ges_events = 0
		@lte_events = 0

		@logs.each do |l|

			if l.category == "CS"
				@cs_hours += l.length
			elsif l.category == "GES"
				@ges_events += 1
			elsif l.category== "LTE"
				@lte_events += 1
			end
		end

		@email = email
		mail(:to => "<#{email}>", :subject => "GES Log History")
	end

end
