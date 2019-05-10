class CreateMinors < ActiveRecord::Migration[5.2]
  def change
    create_table :minors do |t|
      t.string :name
      t.text :description
      t.text :enter_text
      t.text :exit_text
      t.integer :major_id

      t.timestamps
    end
  end
end
