class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
    @products = Product.all.page(params[:page])
  end

  def items_by_category
    #to get to this page: catergorical_path(params[:category_id])
    @products = Product.where(category: params[:category_id]).page(params[:page])
    @category = Category.find(params[:category_id])
  end

  def items_by_brand
    @products = Product.where(brand: params[:brand]).page(params[:page])
    @brand = params[:brand]
  end
end
