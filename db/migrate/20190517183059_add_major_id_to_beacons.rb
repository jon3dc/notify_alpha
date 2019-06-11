class AddMajorIdToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :major_id, :integer
  end
end
