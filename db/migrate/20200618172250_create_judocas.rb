class CreateJudocas < ActiveRecord::Migration[6.0]
  def change
    drop_table :judocas
    create_table :judocas do |t|
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
      t.boolean :is_both_roles

      t.timestamps
    end
  end
end
