require 'test_helper'

class BuybitcoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buybitcoin = buybitcoins(:one)
  end

  test "should get index" do
    get buybitcoins_url
    assert_response :success
  end

  test "should get new" do
    get new_buybitcoin_url
    assert_response :success
  end

  test "should create buybitcoin" do
    assert_difference('Buybitcoin.count') do
      post buybitcoins_url, params: { buybitcoin: { amount: @buybitcoin.amount, btcaddress: @buybitcoin.btcaddress, converted: @buybitcoin.converted, datetransact: @buybitcoin.datetransact, ordernumber: @buybitcoin.ordernumber, paymentoption: @buybitcoin.paymentoption, timetransact: @buybitcoin.timetransact, transactionid: @buybitcoin.transactionid } }
    end

    assert_redirected_to buybitcoin_url(Buybitcoin.last)
  end

  test "should show buybitcoin" do
    get buybitcoin_url(@buybitcoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_buybitcoin_url(@buybitcoin)
    assert_response :success
  end

  test "should update buybitcoin" do
    patch buybitcoin_url(@buybitcoin), params: { buybitcoin: { amount: @buybitcoin.amount, btcaddress: @buybitcoin.btcaddress, converted: @buybitcoin.converted, datetransact: @buybitcoin.datetransact, ordernumber: @buybitcoin.ordernumber, paymentoption: @buybitcoin.paymentoption, timetransact: @buybitcoin.timetransact, transactionid: @buybitcoin.transactionid } }
    assert_redirected_to buybitcoin_url(@buybitcoin)
  end

  test "should destroy buybitcoin" do
    assert_difference('Buybitcoin.count', -1) do
      delete buybitcoin_url(@buybitcoin)
    end

    assert_redirected_to buybitcoins_url
  end
end
