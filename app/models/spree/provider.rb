class Spree::Provider < ActiveRecord::Base
  # Validations
  validates_presence_of :nome_fantasia, :razao_social, :cnpj_cpf
  validates_length_of :estado, is: 2, allow_blank: false
  validate :validate_cpf_cnpj

  # Associations
  has_many :products

  private
  def validate_cpf_cnpj
    cpf = BRDocuments::CPF
    cnpj = BRDocuments::CNPJ
    errors.add(:cnpj_cpf, :cnpj_or_cpf_invalid) unless (
      cpf.valid?(cnpj_cpf) || cnpj.valid?(cnpj_cpf)
    )
  end
end
