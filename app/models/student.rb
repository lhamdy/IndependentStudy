class Student < ApplicationRecord
    belongs_to :previous_grade_data, foreign_key: :sid
    belongs_to :previous_grade_data, foreign_key: :cid
    belongs_to :previous_grade_data, foreign_key: :grade
    belongs_to :fall_course, foreign_key: :title
    belongs_to :previous_grade_data, foreign_key: :term

    def self.load_from_file
        Student.insert_all(
            Student.connection.execute("
                select previous_grade_data.sid, previous_grade_data.cid, previous_grade_data.grade, fall_courses.title, previous_grade_data.term from previous_grade_data, fall_courses where previous_grade_data.cid = fall_courses.cid").to_a
        )
    end
end
