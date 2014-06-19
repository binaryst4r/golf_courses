json.array!(@golf_courses) do |golf_course|
  json.extract! golf_course, :id, :facility_id, :name, :address, :city, :state
  json.url golf_course_url(golf_course, format: :json)
end
