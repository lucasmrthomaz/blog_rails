json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :corpo, :categoria, :autor
  json.url post_url(post, format: :json)
end
