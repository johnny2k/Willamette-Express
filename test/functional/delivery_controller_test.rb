require 'test_helper'

class DeliveryControllerTest < ActionController::TestCase
  test "should get deliver" do
    get :deliver
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
