class BeaconSerializer < ActiveModel::Serializer

  	attributes :id, :name, :description, :major_id, :minor_id, :enter_text, :exit_text, :created_at, :updated_at
  
  	belongs_to :account
	belongs_to :major
end