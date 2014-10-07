json.array!(@articles) do |article|
  json.extract! article, :id, :nom, :description
  json.url article_url(article, format: :json)
end
