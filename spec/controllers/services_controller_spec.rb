require 'rails_helper'

RSpec.describe ServicesController, :type => :controller do

	it "should return index view for index method" do
		get :index

		expect(response).to render_template(:index)
	end

	it "should return new view for new method" do
		get :new

		expect(response).to render_template(:new)
	end

	it "new creates a new service" do
    	get :new

    	expect(assigns(:service)).to be_a_new(Service)
  	end




end
