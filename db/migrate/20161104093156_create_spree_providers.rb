class CreateSpreeProviders < ActiveRecord::Migration
  def change
    create_table :spree_providers do |t|
      t.string :name
      t.string :phone
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :address

      t.timestamps null: false
    end
  end
end
