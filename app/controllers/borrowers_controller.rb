class BorrowersController < ApplicationController
	


	def create
		@borrower = Borrower.new(borrower_params)
	    if @borrower.save
			session[:borrower_id] = @borrower.id
			redirect_to "/online_lending/login"
		else
		    flash[:errors] = @borrower.errors.full_messages
		    redirect_to :back
		end
	end

private
  def borrower_params
    params.require(:borrower).permit(:first_name, :last_name, :email, :password, :password_confirmation, :purpose, :description, :amount_needed, :money)
  end
end
