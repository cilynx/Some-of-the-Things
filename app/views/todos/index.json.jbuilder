json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :check, :priority, :created_at, :modified_at, :due_at, :notes, :link, :category
  json.url todo_url(todo, format: :json)
end
