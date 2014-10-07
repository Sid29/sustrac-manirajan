json.array!(@commentaires) do |commentaire|
  json.extract! commentaire, :id, :titre, :contenu
  json.url commentaire_url(commentaire, format: :json)
end
