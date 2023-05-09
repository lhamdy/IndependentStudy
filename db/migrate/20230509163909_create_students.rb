class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :sid
      t.text :cid
      t.string :grade
      t.text :title 
      t.integer :term
      
      t.timestamps
    end
  end
end
