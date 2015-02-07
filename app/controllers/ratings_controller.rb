class RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    @rating.product_id = params[:product_id]
    @rating.user = current_user
    @rating.save
    render json: { :message => "打分成功" }
  end

  private
   def rating_params
    params.require(:rating).permit(:design, :ux, :creative, :content)
  end
end
