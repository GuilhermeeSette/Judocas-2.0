json.extract! aluno, :id, :nome, :registro_cbj, :telefone1, :telefone2, :email, :cpf, :observacoes, :rg, :rua, :numero_residencia, :bairro, :cidade, :estado, :cep, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
