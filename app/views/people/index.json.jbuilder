json.array!(@people) do |person|
  json.extract! person, :name, :birthday, :pet, :worst_subject, :quidditch_player
  json.url person_url(person, format: :json)
end
