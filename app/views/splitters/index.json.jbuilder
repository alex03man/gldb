json.array!(@splitters) do |splitter|
  json.extract! splitter, :id
  json.url splitter_url(splitter, format: :json)
end
