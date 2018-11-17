class ShoppingCartController < ApplicationController
  def index
    @cart = []
    session[:shopping_cart].each do |product_id, quantity|
        @cart << {'product' => Product.find(product_id), 'quantity' => quantity}
    end

  end

  def remove
    session[:shopping_cart].delete(params[:id])
    redirect_to :action => "index"
  end

  def remove_all
    session[:shopping_cart].clear
    redirect_to :action => "index"
  end

end
