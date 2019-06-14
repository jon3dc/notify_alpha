class AddMinorIdToMinors < ActiveRecord::Migration[5.2]
  def change
    add_column :minors, :minor_id, :integer
  end
end
