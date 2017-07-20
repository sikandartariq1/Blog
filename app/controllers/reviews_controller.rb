class ReviewsController < ApplicationController
  def index
  	@reviews = Review.all
  end
  def new
  	@review = Review.new
  end
  def create
  	@review = Review.new(review_params)

  	if @review.save
			flash[:success] = "Great! Your review has been saved!"
			redirect_to @review
		else
			flash.now[:error] = "Rats! Fix your mistakes, please."
			render 'new'
		end

  end
  def show
  	@review = Review.find(params[:id])

  end

  private
	def review_params
		params.require(:review).permit(:name,:review_type,:body)
	end

end
