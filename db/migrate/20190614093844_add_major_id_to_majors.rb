class AddMajorIdToMajors < ActiveRecord::Migration[5.2]
  def change
    add_column :majors, :major_id, :integer
  end
end
