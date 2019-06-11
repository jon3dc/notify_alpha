class AddBeaconNameToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :name, :string
  end
end
