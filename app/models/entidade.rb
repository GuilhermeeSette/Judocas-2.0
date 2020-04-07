class Entidade < ApplicationRecord
  has_many :professsor
  has_many :aluno
  validates :nome, presence: true
  validates :telefone1, presence: true
  validates :cnpj, presence: true
  validates :rua, presence: true
  validates :numero_residencia, presence: true
  validates :bairro, presence: true
  validates :cidade, presence: true
  validates :estado, presence: true
  validates :cep, presence: true

  validates_format_of :cep,
                      with: /\d{5}-\d{3}/,
                      if: lambda { self.cep.present? }
  validates_format_of :telefone1,
                      with: /\A\(\d{2}\)\s\d?\d{4}-\d{4}\z/,
                      if: lambda { self.telefone1.present? }
end
