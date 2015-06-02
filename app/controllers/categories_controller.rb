class CategoriesController < ApplicationController
  before_action :authorize
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
    @services = @category.services
     
	end

	def new
  		@category = Category.new
	end

	def edit
  		@category = Category.find(params[:id])
	
  end
  def create
    @category = Category.new(category_params) 

    if @category.save
      redirect_to :categories
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(category_params) 
      redirect_to :categories
    else
      render :edit
    end
  end

	def destroy
  		@category = Category.find(params[:id])
  		@category.destroy
  		redirect_to categories_path
	end

  private
  
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
