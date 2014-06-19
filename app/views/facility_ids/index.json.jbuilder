json.array!(@facility_ids) do |facility_id|
  json.extract! facility_id, :id, :tee_name, :tee_color, :golf_course_id
  json.url facility_id_url(facility_id, format: :json)
end
