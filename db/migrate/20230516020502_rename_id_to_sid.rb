class RenameIdToSid < ActiveRecord::Migration[7.0]
  def change
    rename_column :grades, :ID_, :sid
  end
end
