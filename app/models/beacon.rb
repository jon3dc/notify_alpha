class Beacon < ApplicationRecord

	belongs_to :account

	# belongs_to :major
	# belongs_to :minor

	has_one :major
	has_one :minor

	validates :name, presence: true
	# validates :major_id, presence: true
	# validates :minor_id, presence: true
	validates :enter_text, presence: true
	validates :exit_text, presence: true


end
