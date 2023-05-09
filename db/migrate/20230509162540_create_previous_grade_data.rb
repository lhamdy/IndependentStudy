class CreatePreviousGradeData < ActiveRecord::Migration[7.0]
  def change
    create_table :previous_grade_data do |t|
      t.integer :ID_
      t.string :class_
      t.string :subject
      t.string :catalog
      t.string :title
      t.integer :units
      t.string :grading_basis
      t.string :grade
      t.integer :term
      t.string :roster_status

      t.timestamps
    end
  end
end
