class Order < ApplicationRecord
	belongs_to :user
	validates :firstname, :lastname, :from, :to, :count, :date, :user_id, presence: true

end
