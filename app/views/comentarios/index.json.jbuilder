json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :nome, :corpo, :post_id
  json.url comentario_url(comentario, format: :json)
end
