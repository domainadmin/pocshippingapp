require 'test_helper'

class TrailorsControllerTest < ActionController::TestCase
  setup do
    @trailor = trailors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trailors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trailor" do
    assert_difference('Trailor.count') do
      post :create, trailor: { containerno: @trailor.containerno, datetimeval: @trailor.datetimeval, exportcoff: @trailor.exportcoff, trailorno: @trailor.trailorno, truckno: @trailor.truckno }
    end

    assert_redirected_to trailor_path(assigns(:trailor))
  end

  test "should show trailor" do
    get :show, id: @trailor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trailor
    assert_response :success
  end

  test "should update trailor" do
    patch :update, id: @trailor, trailor: { containerno: @trailor.containerno, datetimeval: @trailor.datetimeval, exportcoff: @trailor.exportcoff, trailorno: @trailor.trailorno, truckno: @trailor.truckno }
    assert_redirected_to trailor_path(assigns(:trailor))
  end

  test "should destroy trailor" do
    assert_difference('Trailor.count', -1) do
      delete :destroy, id: @trailor
    end

    assert_redirected_to trailors_path
  end
end
