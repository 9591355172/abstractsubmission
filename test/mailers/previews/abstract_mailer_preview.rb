# Preview all emails at http://localhost:3000/rails/mailers/abstract_mailer
class AbstractMailerPreview < ActionMailer::Preview
	def welcome_email
		user = User.last
		abstract = Abstract.last
		AbstractMailer.welcome_email(user, abstract)
	end

	def payment
		# user = User.last
		abstract = Pay.last
		AbstractMailer.payment(abstract)
	end
end
