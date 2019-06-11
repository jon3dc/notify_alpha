class CreateBeacons < ActiveRecord::Migration[5.2]
  def change
    create_table :beacons do |t|
      t.string :major_name
      t.text :major_description
      t.string :minor_name
      t.text :minor_description
      t.text :enter_text
      t.text :exit_text

      t.timestamps
    end
  end
end
