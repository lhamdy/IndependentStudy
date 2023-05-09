class DropPreviousGradeData < ActiveRecord::Migration[7.0]
  def change
    drop_table :previous_grade_data
  end
end
