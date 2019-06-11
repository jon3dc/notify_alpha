class Major < ApplicationRecord
	# has_many :minors
	# has_many :major_minor_ships, :dependent => :destroy
  	# has_many :minors, :through => :major_minor_ships

	# belongs_to :account

	belongs_to :beacon

	# validates :name, presence: true
	# validates :account, presence: true

	extend FriendlyId
  	friendly_id :name, use: :slugged
end
