class Critic::ReviewsController < ApplicationController
  def index
  	@reviews = Critic::Review.page(params[:page]).per(10)
  end
  def new
  	@review = Critic::Review.new
  end
  def create
  	@review = Critic::Review.new(review_params)

  	if @review.save
			flash[:success] = "Great! Your review has been saved!"
			redirect_to @review
		else
			flash.now[:error] = "Rats! Fix your mistakes, please."
			render 'new'
		end

  end
  def show
  	@review = Critic::Review.find(params[:id])

  end

  private
	def review_params
		params.require(:critic_review).permit(:name,:review_type,:body)
	end

end
