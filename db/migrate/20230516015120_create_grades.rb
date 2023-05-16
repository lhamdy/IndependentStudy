class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.integer :ID_
      t.text :subject
      t.text :catalog
      t.string :grade
      t.integer :term

      t.timestamps
    end
  end
end
