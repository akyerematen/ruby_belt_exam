class SessionsController < ApplicationController
	def new
	end
  
  	def create
    lender = Lender.find_by_email(params[:email])
    borrower = Borrower.find_by_email(params[:email])

    if lender && lender.authenticate(params[:password])
      session[:lender_id] = lender.id
      redirect_to "/online_lending/lender"
    elsif borrower && borrower.authenticate(params[:password])
      session[:borrower_id] = borrower.id
      redirect_to "/online_lending/borrower"
    else
      flash[:errors] = ["Invalid"]
      redirect_to :back
    end
  end

end

