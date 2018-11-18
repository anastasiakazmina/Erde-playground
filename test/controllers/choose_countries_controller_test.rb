require 'test_helper'

class ChooseCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choose_country = choose_countries(:one)
  end

  test "should get index" do
    get choose_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_choose_country_url
    assert_response :success
  end

  test "should create choose_country" do
    assert_difference('ChooseCountry.count') do
      post choose_countries_url, params: { choose_country: { body: @choose_country.body, title: @choose_country.title } }
    end

    assert_redirected_to choose_country_url(ChooseCountry.last)
  end

  test "should show choose_country" do
    get choose_country_url(@choose_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_choose_country_url(@choose_country)
    assert_response :success
  end

  test "should update choose_country" do
    patch choose_country_url(@choose_country), params: { choose_country: { body: @choose_country.body, title: @choose_country.title } }
    assert_redirected_to choose_country_url(@choose_country)
  end

  test "should destroy choose_country" do
    assert_difference('ChooseCountry.count', -1) do
      delete choose_country_url(@choose_country)
    end

    assert_redirected_to choose_countries_url
  end
end
