class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.text :cid
      t.text :title
      t.text :instructor
      t.integer :credits
      t.text :prereqs
      t.text :description
      t.text :language
      t.text :restrictions

      t.timestamps
    end
  end
end
