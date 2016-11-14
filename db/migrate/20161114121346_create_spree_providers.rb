class CreateSpreeProviders < ActiveRecord::Migration
  def change
    create_table :spree_providers do |t|
      t.string :nome_fantasia, null: false
      t.string :razao_social, null: false
      t.string :cnpj_cpf, null: false
      t.string :endereco
      t.string :endereco_numero
      t.string :endereco_complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.decimal :lucro, , precision: 4, scale: 2

      t.timestamps null: false
    end
  end
end
