class Category < ApplicationRecord
  has_many :units
  validates :name, presence: true
  validates :name, uniqueness: true
end
