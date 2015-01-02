json.array!(@atendimentos) do |atendimento|
  json.extract! atendimento, :id, :data, :assunto, :cliente_id, :usuario_id, :atendente_id, :area_id
  json.url atendimento_url(atendimento, format: :json)
end
