class ProductController < ApplicationController
  def index
    if params[:category].present?
      group = ProductCategory.where(category_id: params[:category]).map{|x| x.product_id}
      @product_collection = Product.order(:name).where(id: group).page params[:page]
    else
      @product_collection = Product.order(:name).page params[:page]
    end

    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
