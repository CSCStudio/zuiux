class PageController < ApplicationController
  def home
    @products = Product.last(3)
    @rated_products = current_user.rated_products if current_user
  end
end
