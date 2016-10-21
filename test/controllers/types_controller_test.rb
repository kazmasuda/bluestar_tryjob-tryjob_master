require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

end
