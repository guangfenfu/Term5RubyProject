class ProductController < ApplicationController
  def index
    @product_collection = Product.order(:id).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end
end
