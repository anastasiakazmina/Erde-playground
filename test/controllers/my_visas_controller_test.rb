require 'test_helper'

class MyVisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_visa = my_visas(:one)
  end

  test "should get index" do
    get my_visas_url
    assert_response :success
  end

  test "should get new" do
    get new_my_visa_url
    assert_response :success
  end

  test "should create my_visa" do
    assert_difference('MyVisa.count') do
      post my_visas_url, params: { my_visa: { body: @my_visa.body, title: @my_visa.title } }
    end

    assert_redirected_to my_visa_url(MyVisa.last)
  end

  test "should show my_visa" do
    get my_visa_url(@my_visa)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_visa_url(@my_visa)
    assert_response :success
  end

  test "should update my_visa" do
    patch my_visa_url(@my_visa), params: { my_visa: { body: @my_visa.body, title: @my_visa.title } }
    assert_redirected_to my_visa_url(@my_visa)
  end

  test "should destroy my_visa" do
    assert_difference('MyVisa.count', -1) do
      delete my_visa_url(@my_visa)
    end

    assert_redirected_to my_visas_url
  end
end
