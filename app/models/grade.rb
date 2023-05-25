require 'csv'

class Grade < ApplicationRecord
    belongs_to :course, foreign_key: 'cid', primary_key: 'cid', class_name: 'Course'

    def self.load_from_file
        file_path = "/Users/leenahhamdy/Desktop/IndependentStudy/WebRails2/myapp/fake_class_data.csv"
        ignored_columns = ['class_', 'title', 'units', 'grading_basis', 'roster_status'] 

        CSV.foreach(file_path, headers: true) do |row|
        grade_data = row.to_hash
        grade_data.except!(*ignored_columns)
        Grade.create(grade_data)
        end
    end

    
end
