class AddCidToPreviousGradeData < ActiveRecord::Migration[7.0]
  def change
    add_column :previous_grade_data, :cid, :string
    execute <<-SQL
      UPDATE previous_grade_data SET cid = subject || ' ' || catalog
    SQL

    # Code to remove the cid column
    reversible do |dir|
      dir.up { }
      dir.down { remove_column :previous_grade_data, :cid }
    end
  
  end
end
