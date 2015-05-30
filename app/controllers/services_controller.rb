class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

	def show
		@service = Service.find(params[:id])
    @category = @service.category
	end

	def new
  		@service = Service.new
	end

	def edit
  		@service = Service.find(params[:id])
	
  end
  def create
    @service = Service.new(service_params) 

    if @service.save
      redirect_to :services
    else
      render :new
    end
  end

  def update
    @service = Service.find(params[:id])

    if @service.update_attributes(service_params) 
      redirect_to :services
    else
      render :edit
    end
  end

	def destroy
  		@service = Service.find(params[:id])
  		@service.destroy
  		redirect_to services_path
	end

  private
  
  def service_params
    params.require(:service).permit(:name, :description, :picture, :price, :category_id, :text, :seller_id)
  end

end
