# Preview all emails at http://localhost:3000/rails/mailers/abstract_mailer
class AbstractMailerPreview < ActionMailer::Preview
	def sample_mail_preview
    AbstractMailer.abstract_send(Abstract.first)
  end
end
