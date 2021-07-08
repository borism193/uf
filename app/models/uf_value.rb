class UfValue < ApplicationRecord

    def self.load_csv_data
        file = File.open('tmp/UF_2019.csv')
        file_data = file.readlines.map(&:chomp)
        
        file_data.each_with_index do |row, index|
            next if index.zero?
            cols = row.split(",")
            UfValue.create(date: "2020/01/#{cols[0]}", value: cols[1])
            UfValue.create(date: "2020/02/#{cols[0]}", value: cols[2])
        end

    
    end
end     