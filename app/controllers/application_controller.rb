class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_seller

  protected  
  def current_seller
    @current_seller ||= Seller.find session[:seller_id]  if session[:seller_id] 
  end 
  def authorize
      unless current_seller
        flash[:error] = "you must sign in first, to go to that page"
        redirect_to new_session_path
      end
  end

end
