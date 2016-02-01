require 'test_helper'

class PaymentreceivesControllerTest < ActionController::TestCase
  setup do
    @paymentreceife = paymentreceives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paymentreceives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paymentreceife" do
    assert_difference('Paymentreceive.count') do
      post :create, paymentreceife: { cbendamt: @paymentreceife.cbendamt, chequen: @paymentreceife.chequen, chqdet: @paymentreceife.chqdet, clientcom: @paymentreceife.clientcom, clientname: @paymentreceife.clientname, desc: @paymentreceife.desc, invdate: @paymentreceife.invdate, invoiceno: @paymentreceife.invoiceno, pocbendamt: @paymentreceife.pocbendamt }
    end

    assert_redirected_to paymentreceife_path(assigns(:paymentreceife))
  end

  test "should show paymentreceife" do
    get :show, id: @paymentreceife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paymentreceife
    assert_response :success
  end

  test "should update paymentreceife" do
    patch :update, id: @paymentreceife, paymentreceife: { cbendamt: @paymentreceife.cbendamt, chequen: @paymentreceife.chequen, chqdet: @paymentreceife.chqdet, clientcom: @paymentreceife.clientcom, clientname: @paymentreceife.clientname, desc: @paymentreceife.desc, invdate: @paymentreceife.invdate, invoiceno: @paymentreceife.invoiceno, pocbendamt: @paymentreceife.pocbendamt }
    assert_redirected_to paymentreceife_path(assigns(:paymentreceife))
  end

  test "should destroy paymentreceife" do
    assert_difference('Paymentreceive.count', -1) do
      delete :destroy, id: @paymentreceife
    end

    assert_redirected_to paymentreceives_path
  end
end
