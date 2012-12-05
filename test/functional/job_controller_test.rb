require 'test_helper'

class JobControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get destory" do
    get :destory
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
