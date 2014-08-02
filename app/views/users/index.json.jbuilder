json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :graduation_year, :major, :university, :gender, :role
  json.url user_url(user, format: :json)
end
