class Book < ApplicationRecord
	validates :title, presence: true
	validates :author, presence: true
	validates :price, presence: true
	validates :publishDate, presence: true
	has_many :users
end
