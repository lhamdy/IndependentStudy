class AddCidToGrades < ActiveRecord::Migration[7.0]
  def change
    add_column :grades, :cid, :string
    execute <<-SQL
      UPDATE grades SET cid = subject || ' ' || catalog
    SQL

    # Code to remove the cid column
    reversible do |dir|
      dir.up { }
      dir.down { remove_column :grades, :cid }
    end
  
  end
end
