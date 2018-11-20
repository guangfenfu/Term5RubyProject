class ShoppingCartController < ApplicationController
  before_action :authenticate_user!

  def index
    @total = 0


    @cart = []
    session[:shopping_cart].each do |product_id, quantity|
        product = Product.find(product_id)
        @cart << {'product' => product, 'quantity' => quantity, 'amount' => product.price * quantity}
        @total += (product.price * quantity)
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


  def edit
    id = params[:id]
    quantity = params[:quantity].to_i
    session[:shopping_cart][id] = quantity
    amount = quantity * Product.find(id).price
    total = 0
    session[:shopping_cart].each do |product_id, quantity|
      total += Product.find(product_id).price * quantity
    end

    render :js => "$('span##{id}').html('#{amount}'); $('span#total').html('#{total}')"

  end

end
