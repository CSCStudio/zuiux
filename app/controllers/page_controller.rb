class PageController < ApplicationController
  def home
    @round = Round.includes(:products).last
    @best_product = Product.where(best: true).last
    @rated_products = current_user.rated_products if current_user
  end
end
