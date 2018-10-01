class Abstract < ApplicationRecord
	belongs_to :user, optional: true
	validates_presence_of :abstract_url, :user_id

	# after_create :abstract_send

	# def abstract_send
	# 	AbstractMailer.abstract_send(self).deliver
	# end
end
