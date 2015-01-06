json.array!(@visit_teachers) do |visit_teacher|
  json.extract! visit_teacher, :id, :visit_id, :teacher_id
  json.url visit_teacher_url(visit_teacher, format: :json)
end
