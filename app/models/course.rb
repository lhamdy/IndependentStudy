# class Course < ApplicationRecord
# end

require 'json'
class Course < ApplicationRecord

    self.primary_key = "cid"
    has_many :grades, foreign_key: 'cid', primary_key: 'cid'
    
    def self.load_from_file
        json_data = File.read("/Users/leenahhamdy/Desktop/IndependentStudy/WebRails2/myapp/classes.json")
        courses_data = JSON.parse(json_data)
        
        puts courses_data.class
        puts "hello"
        
        
        courses_data.each do |key, value|
            
            courses_data[key].length.times do |i|
                course = Course.new
                course.cid = courses_data[key][i]['cid']
                puts courses_data[key][i]['cid']
                course.title = courses_data[key][i]['title']
                course.instructor = courses_data[key][i]['instructor']
                course.credits = courses_data[key][i]['Credits']
                course.prereqs = courses_data[key][i]['prereqs']
                course.description = courses_data[key][i]['Description']
                
                course.save
            
                puts i 
            end
        end
    end


    def prereqs_satisfied?(course, taken_courses)
        prereqs_string = self.prereqs.gsub(/(\w+\s+\d+\w*)/, '"\1"')
        prereqs_array = eval(prereqs_string)
        prereqs_array.each do |prereq_group|
          fulfilled = false
          prereq_group.each do |prereq|
            fulfilled = true if taken_courses.include?(prereq)
            if taken_courses.include?(prereq) == false
                break
            end
          end
          return true if fulfilled
        end
        false
    end
end

