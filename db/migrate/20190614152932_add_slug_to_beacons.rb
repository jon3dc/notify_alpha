class AddSlugToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :slug, :string
  end
end
