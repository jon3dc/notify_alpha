class Minor < ApplicationRecord
	belongs_to :major

	validates :name, presence: true
	validates :major, presence: true
end
