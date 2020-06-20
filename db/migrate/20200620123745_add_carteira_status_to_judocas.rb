class AddCarteiraStatusToJudocas < ActiveRecord::Migration[6.0]
  def change
    add_column :judocas, :carteira_status, :string
  end
end
