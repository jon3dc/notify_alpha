class RemoveMinorNameFromBeacons < ActiveRecord::Migration[5.2]
  def change
    remove_column :beacons, :minor_name, :string
  end
end
