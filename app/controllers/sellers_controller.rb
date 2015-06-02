class SellersController < ApplicationController

	def index
		@sellers = Service.all
	end

  def new
    @seller = Seller.new
  end

  def create
        if Seller.create(seller_params).valid?
            flash["alert-success"] = "You have been registered"
            redirect_to sellers_path
        else
            flash["alert-warning"] = "Unable to register you"
            redirect_to new_seller_path
        end
    end

  private

    def seller_params
        params.require(:seller).permit(:name, :username, :contact, :email, :password, :password_confirmation)
    end

end
