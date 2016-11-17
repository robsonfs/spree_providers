class Spree::Admin::ProvidersController < Spree::Admin::ResourceController
  def index
    @collection = Spree::Provider.all
  end

  def edit
    @provider = Spree::Provider.find(params[:id])
  end

  def show
    session[:return_to] ||= request.referer
    redirect_to action: :edit
  end
end
