class RemoveMinorDescriptionFromBeacons < ActiveRecord::Migration[5.2]
  def change
    remove_column :beacons, :minor_description, :string
  end
end
