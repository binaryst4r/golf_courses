class GolfCourse < ActiveRecord::Base

	attr_accessible :facility_id, :name, :city, :state, :address

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			golf_course = find_by_facility_id(row["facility_id"]) || new
			golf_course.attributes = row.to_hash.slice(*accessible_attributes)
			golf_course.save!
	end
	end

	def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
	  when ".csv" then Csv.new(file.path, nil, :ignore)
	  when ".xls" then Excel.new(file.path, nil, :ignore)
	  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end
end
