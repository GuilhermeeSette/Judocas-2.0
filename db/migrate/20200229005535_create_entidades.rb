class CreateEntidades < ActiveRecord::Migration[6.0]
  def change
    create_table :entidades do |t|
      t.string :nome
      t.string :telefone1
      t.string :telefone2
      t.string :cnpj
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
