json.array!(Visit.all) do |visit|
  json.title visit.description
  json.start visit.time
  json.url visit_url visit, format: :html
end
