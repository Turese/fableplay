require 'test_helper'

class FablepetsControllerTest < ActionController::TestCase
  setup do
    @fablepet = fablepets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fablepets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fablepet" do
    assert_difference('Fablepet.count') do
      post :create, fablepet: { [integer]: @fablepet.[integer], colors: @fablepet.colors, integer: @fablepet.integer, name: @fablepet.name, pattern: @fablepet.pattern, species: @fablepet.species, string: @fablepet.string, string: @fablepet.string, unique_id: @fablepet.unique_id }
    end

    assert_redirected_to fablepet_path(assigns(:fablepet))
  end

  test "should show fablepet" do
    get :show, id: @fablepet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fablepet
    assert_response :success
  end

  test "should update fablepet" do
    patch :update, id: @fablepet, fablepet: { [integer]: @fablepet.[integer], colors: @fablepet.colors, integer: @fablepet.integer, name: @fablepet.name, pattern: @fablepet.pattern, species: @fablepet.species, string: @fablepet.string, string: @fablepet.string, unique_id: @fablepet.unique_id }
    assert_redirected_to fablepet_path(assigns(:fablepet))
  end

  test "should destroy fablepet" do
    assert_difference('Fablepet.count', -1) do
      delete :destroy, id: @fablepet
    end

    assert_redirected_to fablepets_path
  end
end
