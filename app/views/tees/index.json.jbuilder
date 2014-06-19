json.array!(@tees) do |tee|
  json.extract! tee, :id, :facility_id, :tee_name, :tee_color, :golf_course_id, :hole1, :hole2, :hole3
  json.url tee_url(tee, format: :json)
end
