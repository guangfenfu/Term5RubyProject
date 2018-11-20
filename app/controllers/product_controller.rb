class ProductController < ApplicationController
  def index
    if params[:category].present?
      group = ProductCategory.where(category_id: params[:category]).map{|x| x.product_id}
      product_collection = Product.order(:name).where(id: group)
    else
      product_collection = Product.order(:name)
    end

    if params[:search].present?
      @product_collection = product_collection.where("name LIKE ? OR description LIKE ?", '%'+params[:search]+'%', '%'+params[:search]+'%').page params[:page]
    else
      @product_collection = product_collection.page params[:page]
    end

    @categories = Category.all
  end



  def show
    @product = Product.find(params[:id])
  end



  def mark_as_favourite
    if (session[:shopping_cart][params[:id]] == nil)
      session[:shopping_cart][params[:id]] = 1
    else
      session[:shopping_cart][params[:id]] += 1
    end
    # redirect_to product_index_path

    render :js => "$('a#shopping_cart').html('Shopping Cart(#{session[:shopping_cart].length})')"
  end



end
