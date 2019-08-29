class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :user
	validates :description, presence: true, length: {minimum: 3}
	validates :article, presence: true
	validates :user, presence: true
end
