class AddSlugToMajor < ActiveRecord::Migration[5.2]
  def change
    add_column :majors, :slug, :string
    add_index :majors, :slug, unique: true
  end
end
