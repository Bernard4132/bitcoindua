require 'test_helper'

class EblastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eblast = eblasts(:one)
  end

  test "should get index" do
    get eblasts_url
    assert_response :success
  end

  test "should get new" do
    get new_eblast_url
    assert_response :success
  end

  test "should create eblast" do
    assert_difference('Eblast.count') do
      post eblasts_url, params: { eblast: { email: @eblast.email } }
    end

    assert_redirected_to eblast_url(Eblast.last)
  end

  test "should show eblast" do
    get eblast_url(@eblast)
    assert_response :success
  end

  test "should get edit" do
    get edit_eblast_url(@eblast)
    assert_response :success
  end

  test "should update eblast" do
    patch eblast_url(@eblast), params: { eblast: { email: @eblast.email } }
    assert_redirected_to eblast_url(@eblast)
  end

  test "should destroy eblast" do
    assert_difference('Eblast.count', -1) do
      delete eblast_url(@eblast)
    end

    assert_redirected_to eblasts_url
  end
end
