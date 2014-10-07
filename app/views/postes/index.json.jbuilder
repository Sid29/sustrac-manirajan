json.array!(@postes) do |poste|
  json.extract! poste, :id, :titre, :contenu
  json.url poste_url(poste, format: :json)
end
