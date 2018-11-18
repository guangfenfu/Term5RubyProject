class OrderController < ApplicationController
  before_action :authenticate_user!

  def index
    @product_collection = Product.order(:name)
  end

  def show
  end
end
