require 'test_helper'

class CrytosubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crytosubscription = crytosubscriptions(:one)
  end

  test "should get index" do
    get crytosubscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_crytosubscription_url
    assert_response :success
  end

  test "should create crytosubscription" do
    assert_difference('Crytosubscription.count') do
      post crytosubscriptions_url, params: { crytosubscription: { email: @crytosubscription.email, name: @crytosubscription.name, phone: @crytosubscription.phone } }
    end

    assert_redirected_to crytosubscription_url(Crytosubscription.last)
  end

  test "should show crytosubscription" do
    get crytosubscription_url(@crytosubscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_crytosubscription_url(@crytosubscription)
    assert_response :success
  end

  test "should update crytosubscription" do
    patch crytosubscription_url(@crytosubscription), params: { crytosubscription: { email: @crytosubscription.email, name: @crytosubscription.name, phone: @crytosubscription.phone } }
    assert_redirected_to crytosubscription_url(@crytosubscription)
  end

  test "should destroy crytosubscription" do
    assert_difference('Crytosubscription.count', -1) do
      delete crytosubscription_url(@crytosubscription)
    end

    assert_redirected_to crytosubscriptions_url
  end
end
