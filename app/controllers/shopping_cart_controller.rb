class ShoppingCartController < ApplicationController
  def index
    if session[:cart] == nil
      @cart = Hash.new
    else
      @cart = session[:cart]
    end
  end
end
