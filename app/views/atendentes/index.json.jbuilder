json.array!(@atendentes) do |atendente|
  json.extract! atendente, :id, :name
  json.url atendente_url(atendente, format: :json)
end
