require 'test_helper'

class TroopsControllerTest < ActionController::TestCase
  setup do
    @troop = troops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:troops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troop" do
    assert_difference('Troop.count') do
      post :create, troop: @troop.attributes
    end

    assert_redirected_to troop_path(assigns(:troop))
  end

  test "should show troop" do
    get :show, id: @troop.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troop.to_param
    assert_response :success
  end

  test "should update troop" do
    put :update, id: @troop.to_param, troop: @troop.attributes
    assert_redirected_to troop_path(assigns(:troop))
  end

  test "should destroy troop" do
    assert_difference('Troop.count', -1) do
      delete :destroy, id: @troop.to_param
    end

    assert_redirected_to troops_path
  end
end
