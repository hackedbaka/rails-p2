class SessionsController < ApplicationController

	def new
      @seller = Seller.new
  	end

  	def create
        seller = Seller.where( email: seller_params[:email]).first

        if seller && seller.authenticate(seller_params[:password])
          session[:seller_id] = seller.id
         
          flash[:success] = 'you are signed in!'
          redirect_to sellers_path
        else
          #redirect back to the page
          flash[:error] = 'unable to sign you in'

          redirect_to new_session_path
        end
    end

    def destroy
      session[:seller_id] = nil
      flash[:error] = 'you have been logged out'
      redirect_to sellers_path
  end

private

    def seller_params
      params.require(:seller).permit(:email,:password)
    end

end
