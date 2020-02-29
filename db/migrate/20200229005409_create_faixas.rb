class CreateFaixas < ActiveRecord::Migration[6.0]
  def change
    create_table :faixas do |t|
      t.string :cor
      t.date :data_entrega

      t.timestamps
    end
  end
end
