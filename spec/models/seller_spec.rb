require 'rails_helper'

RSpec.describe Seller, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"


   context "general" do


    it "correct input" do
      expect(FactoryGirl.build(:valid_seller).save).to be true
    end

  end

  context "email" do


    it "must be present" do
      expect(FactoryGirl.build(:null_email).save).to be false
    end

    it "must be valid" do
      expect(FactoryGirl.build(:valid_email).save).to be false
    end

    it 'must be unique' do
 		seller1 = FactoryGirl.create(:valid_seller)
		seller2 = FactoryGirl.build(:valid_seller)

		expect(seller2.save).to be false

	end

  end

  context "password" do

    it "must be present" do
      expect(FactoryGirl.build(:null_password).save).to be false
    end

    it "password must have at least 4 char" do
      expect(FactoryGirl.build(:password_length).save).to be false
    end
	
	it 'password confirm must match' do
    	expect(FactoryGirl.build(:valid_seller1).save).to be false
  		
    end

  end

  context "username" do
    it "must be present" do
      expect(FactoryGirl.build(:null_username).save).to be false
    end

  end

  context "username" do


    it "must be present" do
      expect(FactoryGirl.build(:null_contact).save).to be false
    end

  end

  describe "have many " do
    it { should have_many(:services) }
  end

end
