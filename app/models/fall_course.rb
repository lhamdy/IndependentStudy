require 'json'
class FallCourse < ApplicationRecord

    has_many :students 
    
    def self.load_from_file
        json_data = File.read("/Users/leenahhamdy/Desktop/IndependentStudy/WebRails/myapp/classes.json")
        courses_data = JSON.parse(json_data)
        # # puts courses_data.is_a?(Array)
        puts courses_data.class
        puts "hello"
        
        
        courses_data.each do |key, value|
            # puts value.class
            # puts value
            # puts courses_data[key].class
            courses_data[key].length.times do |i|
                course = FallCourse.new
                course.cid = courses_data[key][i]['cid']
                puts courses_data[key][i]['cid']
                course.title = courses_data[key][i]['title']
                course.instructor = courses_data[key][i]['instructor']
                course.credits = courses_data[key][i]['Credits']
                course.prereqs = courses_data[key][i]['prereqs']
                course.description = courses_data[key][i]['Description']
                # course.language = courses_data[key][i]['language']
                # course.restrictions = courses_data[key][i]['restrictions']
                course.save
            
                puts i 
            end
        end
    end
end

