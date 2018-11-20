class ChargesController < ApplicationController

  def new
    @total = 0
    session[:shopping_cart].each do |product_id, quantity|
      @total += Product.find(product_id).price * quantity
    end
  end

  def create

    # Amount in cents
    @amount = 0
    session[:shopping_cart].each do |product_id, quantity|
      @amount += Product.find(product_id).price * quantity
    end

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@amount * 100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end
