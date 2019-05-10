class Account < ApplicationRecord
	has_many :majors

	validates :name, presence: true
end
