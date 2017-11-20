require 'test_helper'

class SellbitcoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sellbitcoin = sellbitcoins(:one)
  end

  test "should get index" do
    get sellbitcoins_url
    assert_response :success
  end

  test "should get new" do
    get new_sellbitcoin_url
    assert_response :success
  end

  test "should create sellbitcoin" do
    assert_difference('Sellbitcoin.count') do
      post sellbitcoins_url, params: { sellbitcoin: { accept: @sellbitcoin.accept, amount: @sellbitcoin.amount, converted: @sellbitcoin.converted, mobilemoneyname: @sellbitcoin.mobilemoneyname, mobilemoneynumber: @sellbitcoin.mobilemoneynumber, ordernumber: @sellbitcoin.ordernumber, paymentoption: @sellbitcoin.paymentoption } }
    end

    assert_redirected_to sellbitcoin_url(Sellbitcoin.last)
  end

  test "should show sellbitcoin" do
    get sellbitcoin_url(@sellbitcoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_sellbitcoin_url(@sellbitcoin)
    assert_response :success
  end

  test "should update sellbitcoin" do
    patch sellbitcoin_url(@sellbitcoin), params: { sellbitcoin: { accept: @sellbitcoin.accept, amount: @sellbitcoin.amount, converted: @sellbitcoin.converted, mobilemoneyname: @sellbitcoin.mobilemoneyname, mobilemoneynumber: @sellbitcoin.mobilemoneynumber, ordernumber: @sellbitcoin.ordernumber, paymentoption: @sellbitcoin.paymentoption } }
    assert_redirected_to sellbitcoin_url(@sellbitcoin)
  end

  test "should destroy sellbitcoin" do
    assert_difference('Sellbitcoin.count', -1) do
      delete sellbitcoin_url(@sellbitcoin)
    end

    assert_redirected_to sellbitcoins_url
  end
end
