require 'rails_helper'

RSpec.describe SellersController, :type => :controller do

	it "should return index view for index method" do
		get :index

		expect(response).to render_template(:index)

	end

	it "should return new view for new method" do
		get :new

		expect(response).to render_template(:new)
	end

	it "new creates a new seller" do
    	get :new

    	expect(assigns(:seller)).to be_a_new(Seller)
  	end

  	subject { post :create, :seller => { :password => "" } }
  	it "if invalid use redirect" do
  	  		
  	  	expect(subject).to redirect_to(new_seller_path)

  	end

end
