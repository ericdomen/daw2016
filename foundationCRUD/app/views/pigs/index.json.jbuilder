json.array!(@pigs) do |pig|
  json.extract! pig, :id, :name, :age, :with
  json.url pig_url(pig, format: :json)
end
