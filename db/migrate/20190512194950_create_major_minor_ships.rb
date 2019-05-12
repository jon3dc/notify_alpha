class CreateMajorMinorShips < ActiveRecord::Migration[5.2]
  def change
    create_table :major_minor_ships do |t|
      t.integer :major_id
      t.integer :minor_id

      t.timestamps
    end
  end
end
