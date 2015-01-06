json.array!(@visits) do |visit|
  json.extract! visit, :id, :time, :location, :lesson, :description, :summary
  json.url visit_url(visit, format: :json)
end
