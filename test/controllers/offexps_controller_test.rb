require 'test_helper'

class OffexpsControllerTest < ActionController::TestCase
  setup do
    @offexp = offexps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offexps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offexp" do
    assert_difference('Offexp.count') do
      post :create, offexp: { offintbill: @offexp.offintbill, offpp: @offexp.offpp, offren: @offexp.offren, offrent: @offexp.offrent, offroomrent: @offexp.offroomrent, offspfee: @offexp.offspfee, offstfsal: @offexp.offstfsal, offstvimed: @offexp.offstvimed, offtbill: @offexp.offtbill, offurn: @offexp.offurn, ofstat: @offexp.ofstat }
    end

    assert_redirected_to offexp_path(assigns(:offexp))
  end

  test "should show offexp" do
    get :show, id: @offexp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offexp
    assert_response :success
  end

  test "should update offexp" do
    patch :update, id: @offexp, offexp: { offintbill: @offexp.offintbill, offpp: @offexp.offpp, offren: @offexp.offren, offrent: @offexp.offrent, offroomrent: @offexp.offroomrent, offspfee: @offexp.offspfee, offstfsal: @offexp.offstfsal, offstvimed: @offexp.offstvimed, offtbill: @offexp.offtbill, offurn: @offexp.offurn, ofstat: @offexp.ofstat }
    assert_redirected_to offexp_path(assigns(:offexp))
  end

  test "should destroy offexp" do
    assert_difference('Offexp.count', -1) do
      delete :destroy, id: @offexp
    end

    assert_redirected_to offexps_path
  end
end
