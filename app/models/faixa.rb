class Faixa < ApplicationRecord
  belongs_to :alunos, dependent: :destroy
end
