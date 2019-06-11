class RemoveExitTextFromMinors < ActiveRecord::Migration[5.2]
  def change
    remove_column :minors, :exit_text, :string
  end
end
