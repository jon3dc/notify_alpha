class Minor < ApplicationRecord
	# belongs_to :major
	# has_many :major_minor_ships, :dependent => :destroy
  	# has_many :majors, :through => :major_minor_ships

	# validates :name, presence: true
	# validates :majors_id, presence: true

	# belongs_to :beacon
end
