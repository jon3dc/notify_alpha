class Major < ApplicationRecord

	has_many :beacons

	validates :name, presence: true
	
	extend FriendlyId
  	friendly_id :name, use: :slugged

  	before_create :set_major_id

  	def set_major_id
      self.major_id = ApplicationController.helpers.generate_major_id
    end
end