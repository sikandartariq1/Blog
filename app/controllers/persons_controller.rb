class PersonsController < ApplicationController
	before_action :authenticate_person!

  def index
  	@persons = Person.all
  end
  
  def show
  	@person = Person.find(params[:id])  	
  end

  def new
  	@person = Person.new
  end

  def create
  	@manager = Person.find(params[:manager_id])
    @person = Person.new(person_params)

  	if manager?
  		if @person.save
	  		flash[:success] = "Great! Person details have been saved!"
			  redirect_to @person
			else
				flash.now[:error] = "Rats! Fix your mistakes, please."
			  render 'new'
			end
		end
  end

  def subordinates
  	@person = Person.find(params[:id])
  end

  private
	def person_params
		params.require(:person).permit(:name,:phone_no,:company)
	end

	def manager?
		if @manager
	  	@person.manager = @manager
	  	return true
		else
			flash.now[:not_found_error] = "Manager Not Found!"
			return false
		end
	end

end
