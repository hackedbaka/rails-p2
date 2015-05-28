require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get description" do
    get :description
    assert_response :success
  end

end
