FactoryGirl.define do
  

  ##GENERAL

  factory :valid_seller, class: Seller do

  	name "test"
  	username "test"
  	contact "1234567890"
    email "test@test.com"
    password "password"
    password_confirmation "password"

  end

  factory :valid_seller1, class: Seller do

  	name "test"
  	username "test"
  	contact "1234567890"
    email "test@test.com"
    password "password"
    password_confirmation "not-password"

  end

  ##email

  factory :null_email, class: Seller do

  	email ""
    
  end

  factory :valid_email, class: Seller do

  	email "1@1"
    
  end



  ##password

  	factory :null_password, class: Seller do

  		password ""
 
  	end

	factory :password_length, class: Seller do

  		password "123"
 
  	end

 	##username

  factory :null_username, class: Seller do

  	username ""
    
  end
  ##contact

  factory :null_contact, class: Seller do

  	contact ""
    
  end




end
