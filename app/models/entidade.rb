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
                      with: /\d{8}/,
                      if: -> { self.cep.present? }
  validates_format_of :telefone1,
                      with: /\d{11}/,
                      if: -> { self.telefone1.present? }

  scope :search_like, -> (field_name, search_string) {where("#{field_name} LIKE ?", "%#{search_string}%")}
end
