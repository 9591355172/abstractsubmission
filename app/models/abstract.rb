class Abstract < ApplicationRecord
	belongs_to :user, optional: true
	validates_presence_of :abstract_url, :user_id
end
