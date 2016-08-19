class OnlineLendingController < ApplicationController
	def register	
	end

	def login
	end

	def lender
		@lender = Lender.find(session[:lender_id])
		@borrowers = Borrower.all
	end

	def borrower	
		@borrower = Borrower.find(session[:borrower_id])
		@lenders = Lender.all

	end
end
