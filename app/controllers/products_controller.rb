class ProductsController < ApplicationController

  before_action :authenticate_user!

  def show
    @product = Product.find(params[:id])
    unless Rating.product_with_user(@product.id, current_user.id).any?
      redirect_to root_path, alert: '请先对该产品进行打分'
    end
  end
end
