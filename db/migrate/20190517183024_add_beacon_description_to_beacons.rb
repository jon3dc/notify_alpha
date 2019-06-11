class AddBeaconDescriptionToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :description, :text
  end
end
