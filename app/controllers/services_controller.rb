class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

	def show
		@service = Service.find(params[:id])
	end

	def new
  		@service = Service.new
	end

	def create
  		@service = Service.new(params.require(:service).permit(:name, :description, :picture, :price, :category_id))

  		if @service.save
    		redirect_to services_path
  		else
    		render :new
  		end
	end

	def edit
  		@service = Service.find(params[:id])
	end

	def update
  		@service = Service.find(params[:id])

  		if @service.update_attributes(params.require(:service).permit(:name, :description, :picture, :price, :category_id))
   			redirect_to services_path
  		else
    		render :edit
  		end
	end

	def destroy
  		@service = Service.find(params[:id])
  		@service.destroy
  		redirect_to services_path
	end

end
