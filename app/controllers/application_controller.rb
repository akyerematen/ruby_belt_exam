class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def current_lender
  	Lender.find(session[:lender_id]) if session[:lender_id]
  end
  
  helper_method :current_lender
end
