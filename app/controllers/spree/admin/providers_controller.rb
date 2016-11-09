class Spree::Admin::ProvidersController < Spree::Admin::ResourceController
  def index
    @collection = Spree::Provider.all
  end
end
