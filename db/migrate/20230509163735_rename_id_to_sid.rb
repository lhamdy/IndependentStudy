class RenameIdToSid < ActiveRecord::Migration[7.0]
  def change
    rename_column :previous_grade_data, :ID_, :sid
  end
end
