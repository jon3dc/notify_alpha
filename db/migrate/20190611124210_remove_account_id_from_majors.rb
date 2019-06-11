class RemoveAccountIdFromMajors < ActiveRecord::Migration[5.2]
  def change
    remove_column :majors, :account_id, :string
  end
end
