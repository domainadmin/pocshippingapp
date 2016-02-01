require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  setup do
    @status = statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status" do
    assert_difference('Status.count') do
      post :create, status: { contno: @status.contno, custbata: @status.custbata, custinc: @status.custinc, custno: @status.custno, delito: @status.delito, detcharge: @status.detcharge, driverbata: @status.driverbata, drivname: @status.drivname, exrelno: @status.exrelno, pocdrivbata: @status.pocdrivbata, size: @status.size, tokencharge: @status.tokencharge, tokeno: @status.tokeno, tollcharge: @status.tollcharge, triprent: @status.triprent, triptotamt: @status.triptotamt, type: @status.type, weight: @status.weight, wghmntbata: @status.wghmntbata }
    end

    assert_redirected_to status_path(assigns(:status))
  end

  test "should show status" do
    get :show, id: @status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status
    assert_response :success
  end

  test "should update status" do
    patch :update, id: @status, status: { contno: @status.contno, custbata: @status.custbata, custinc: @status.custinc, custno: @status.custno, delito: @status.delito, detcharge: @status.detcharge, driverbata: @status.driverbata, drivname: @status.drivname, exrelno: @status.exrelno, pocdrivbata: @status.pocdrivbata, size: @status.size, tokencharge: @status.tokencharge, tokeno: @status.tokeno, tollcharge: @status.tollcharge, triprent: @status.triprent, triptotamt: @status.triptotamt, type: @status.type, weight: @status.weight, wghmntbata: @status.wghmntbata }
    assert_redirected_to status_path(assigns(:status))
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete :destroy, id: @status
    end

    assert_redirected_to statuses_path
  end
end
