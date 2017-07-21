class Admin::ReviewsController < ApplicationController
  def index
  	@reviews = Admin::Review.all
  end
  def new
  	@review = Admin::Review.new
  end
  def create
  	@review = Admin::Review.new(review_params)

  	if @review.save
			flash[:success] = "Great! Your review has been saved!"
			redirect_to @review
		else
			flash.now[:error] = "Rats! Fix your mistakes, please."
			render 'new'
		end

  end
  def show
  	@review = Admin::Review.find(params[:id])

  end

  private
	def review_params
		params.require(:admin_review).permit(:name,:review_type,:body)
	end

end
