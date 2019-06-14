class Beacon < ApplicationRecord

	belongs_to :account
	belongs_to :major

	validates :name, presence: true
	validates :enter_text, presence: true
	validates :exit_text, presence: true

	extend FriendlyId
  	friendly_id :name, use: :slugged

	before_create :set_minor_id

  	def set_minor_id
      self.minor_id = ApplicationController.helpers.generate_minor_id(self.major_id)
    end
end
