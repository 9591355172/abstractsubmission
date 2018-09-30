class AbstractMailer < ApplicationMailer

	def abstract_send(abstract)
		@abstract = abstract
		mail to: "abhijeet428001@gmail.com", subject: "New Abstract uploaded", from: "abhijeet428001@gmail.com"

	end
end
