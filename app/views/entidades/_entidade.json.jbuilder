json.extract! entidade, :id, :nome, :telefone1, :telefone2, :cnpj, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep, :created_at, :updated_at
json.url entidade_url(entidade, format: :json)
