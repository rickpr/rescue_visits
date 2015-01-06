json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :phone
  json.url teacher_url(teacher, format: :json)
end
