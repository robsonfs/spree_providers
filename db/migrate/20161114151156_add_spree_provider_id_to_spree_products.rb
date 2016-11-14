class AddSpreeProviderIdToSpreeProducts < ActiveRecord::Migration
  def change
    add_reference :spree_products, :spree_provider, index: true, foreign_key: true
  end
end
