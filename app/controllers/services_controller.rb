class ServicesController < ApplicationController

	def index

		# @services = Service.all
    
    # @service1 = @services.sort_by {|obj| obj.created_at }.reverse
    if params[:search]
      @services = Service.search(params[:search]).order("created_at DESC")
    else
      @services = Service.all.order('created_at DESC')
    end
	end

  def my_index
    @services = Service.all
  end

	def show
		@service = Service.find(params[:id])
    @category = @service.category
    @seller = @service.seller
	end

	def new
  		@service = Service.new
      @categories = Category.all
	end

	def edit
  		@service = Service.find(params[:id])
      @categories = Category.all	
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
