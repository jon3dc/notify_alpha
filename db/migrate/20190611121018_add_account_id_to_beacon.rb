class AddAccountIdToBeacon < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :account_id, :integer
  end
end
