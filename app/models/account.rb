class Account < ApplicationRecord
	has_many :beacons
	validates :name, presence: true

	extend FriendlyId
  	friendly_id :name, use: :slugged
end
