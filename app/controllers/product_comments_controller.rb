class ProductCommentsController < ApplicationController

  def create
    comment = ProductComment.new(comment_params)
    comment.product_id = params[:product_id]
    comment.save
  end

  private

  def comment_params
    params.require(:product_comment).permit(:good, :bad, :feeling)
  end

end
