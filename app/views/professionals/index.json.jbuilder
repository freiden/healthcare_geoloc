json.array!(@professionals) do |professional|
  json.extract! professional, :id
  json.url professional_url(professional, format: :json)
end
