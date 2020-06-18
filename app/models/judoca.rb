class Judoca < ApplicationRecord
  has_one :faixa
  validates :nome, presence: true
  validates :registro_cbj, presence: true
  validates :telefone1, presence: true
  validates :email, presence: true
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :rua, presence: true
  validates :numero_residencia, presence: true
  validates :bairro, presence: true
  validates :cidade, presence: true
  validates :estado, presence: true
  validates :cep, presence: true

  validates_format_of :email,
                      with: /\A\w+([-\.]?\w)*@([a-z\d]+[-\.])*([a-z\d]+\.)[a-z]+\z/i,
                      if: -> { self.email.present? }
  validates_format_of :cep,
                      with: /\d{8}/,
                      if: -> { self.cep.present? }
  validates_format_of :telefone1,
                      with: /\d{11}/,
                      if: -> { self.telefone1.present? }

  scope :search_like, -> (field_name, search_string) {where("#{field_name} LIKE ?", "%#{search_string}%")}
end
