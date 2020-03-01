class Aluno < ApplicationRecord
  has_one :professor
  has_one :faixa
end
