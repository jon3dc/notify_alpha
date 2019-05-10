class Major < ApplicationRecord
	has_many :minors
	belongs_to :account

	validates :name, presence: true
	validates :account, presence: true

	extend FriendlyId
  	friendly_id :name, use: :slugged
end
