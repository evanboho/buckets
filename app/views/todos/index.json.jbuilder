json.array!(@todos) do |todo|
  json.extract! todo, :title, :category_id, :body, :up_votes
  json.url todo_url(todo, format: :json)
end