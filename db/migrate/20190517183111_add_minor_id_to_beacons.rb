class AddMinorIdToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :minor_id, :integer
  end
end
