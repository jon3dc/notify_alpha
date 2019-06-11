class RemoveMajorDescriptionFromBeacons < ActiveRecord::Migration[5.2]
  def change
    remove_column :beacons, :major_description, :string
  end
end
