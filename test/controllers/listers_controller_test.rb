require 'test_helper'

class ListersControllerTest < ActionController::TestCase
  setup do
    @lister = listers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lister" do
    assert_difference('Lister.count') do
      post :create, lister: { city: @lister.city, email: @lister.email, first_name: @lister.first_name, last_name: @lister.last_name, number_bathrooms: @lister.number_bathrooms, number_bedrooms: @lister.number_bedrooms, phone_number: @lister.phone_number, price: @lister.price, state: @lister.state }
    end

    assert_redirected_to lister_path(assigns(:lister))
  end

  test "should show lister" do
    get :show, id: @lister
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lister
    assert_response :success
  end

  test "should update lister" do
    patch :update, id: @lister, lister: { city: @lister.city, email: @lister.email, first_name: @lister.first_name, last_name: @lister.last_name, number_bathrooms: @lister.number_bathrooms, number_bedrooms: @lister.number_bedrooms, phone_number: @lister.phone_number, price: @lister.price, state: @lister.state }
    assert_redirected_to lister_path(assigns(:lister))
  end

  test "should destroy lister" do
    assert_difference('Lister.count', -1) do
      delete :destroy, id: @lister
    end

    assert_redirected_to listers_path
  end
end
