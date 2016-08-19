class LendersController < ApplicationController
	attr_accessor :answer

	def index
		
	end
	
	def create
		@lender = Lender.new(lender_params)
	    if @lender.save
	      session[:lender_id] = @lender.id
	      redirect_to "/online_lending/login"
	    else
	      flash[:errors] = @lender.errors.full_messages
	      redirect_to :back
	    end
	end

	def adds
		redirect_to "/online_lending/lender"
	end

private
  def lender_params
    params.require(:lender).permit(:first_name, :last_name, :email, :password, :password_confirmation, :money)
  end


end
