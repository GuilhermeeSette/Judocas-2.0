class Faixa < ApplicationRecord
  belongs_to :alunos, dependent: :destroy
  COLORS = [
    "BRANCA",
    "CINZA",
    "AZUL",
    "AMARELA",
    "LARANJA",
    "VERDE",
    "ROXA",
    "MARROM",
    "PRETA",
    "CORAL",
    "VERMELHA"
  ].freeze
end
