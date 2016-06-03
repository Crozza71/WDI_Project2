json.array!(@quotes) do |quote|
  json.extract! quote, :id, :body, :culprit, :date
  json.url quote_url(quote, format: :json)
end
