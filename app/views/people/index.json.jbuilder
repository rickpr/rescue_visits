json.array!(@people) do |person|
  json.extract! person, :id, :category, :name, :phone, :address, :age, :gender, :attendance, :baptism, :confirmation, :priesthood, :help, :teacher_id
  json.url person_url(person, format: :json)
end
