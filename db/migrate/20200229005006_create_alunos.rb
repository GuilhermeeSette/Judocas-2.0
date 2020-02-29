class CreateAlunos < ActiveRecord::Migration[6.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :registro_cbj
      t.string :telefone1
      t.string :telefone2
      t.string :email
      t.string :cpf
      t.text :observacoes
      t.string :rg
      t.string :rua
      t.string :numero_residencia
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
