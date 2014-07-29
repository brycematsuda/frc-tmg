json.array!(@terms) do |term|
  json.extract! term, :id, :phrase, :definition, :example
  json.url term_url(term, format: :json)
end
