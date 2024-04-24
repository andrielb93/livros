json.extract! livro, :id, :Título, :Autor, :Nota, :Descricao, :created_at, :updated_at
json.url livro_url(livro, format: :json)
