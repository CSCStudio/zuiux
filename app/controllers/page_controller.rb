class PageController < ApplicationController
  def home
    @products = Product.last(3)
  end
end
