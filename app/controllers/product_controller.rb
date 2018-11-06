class ProductController < ApplicationController
  def index
    @product_collection = Product.order(:name).page params[:page]
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
