require 'csv'
class PreviousGradeDatum < ApplicationRecord
    def self.load_from_file
        file_path = "/Users/leenahhamdy/Desktop/IndependentStudy/WebRails/myapp/fake_class_data.csv"
        CSV.foreach(file_path, headers: true) do |row|
            PreviousGradeDatum.create(row.to_hash)
        end
    end
end

