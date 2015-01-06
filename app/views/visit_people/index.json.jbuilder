json.array!(@visit_people) do |visit_person|
  json.extract! visit_person, :id, :visit_id, :person_id
  json.url visit_person_url(visit_person, format: :json)
end
