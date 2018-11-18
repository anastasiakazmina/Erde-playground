require "application_system_test_case"

class ChooseCountriesTest < ApplicationSystemTestCase
  setup do
    @choose_country = choose_countries(:one)
  end

  test "visiting the index" do
    visit choose_countries_url
    assert_selector "h1", text: "Choose Countries"
  end

  test "creating a Choose country" do
    visit choose_countries_url
    click_on "New Choose Country"

    fill_in "Body", with: @choose_country.body
    fill_in "Title", with: @choose_country.title
    click_on "Create Choose country"

    assert_text "Choose country was successfully created"
    click_on "Back"
  end

  test "updating a Choose country" do
    visit choose_countries_url
    click_on "Edit", match: :first

    fill_in "Body", with: @choose_country.body
    fill_in "Title", with: @choose_country.title
    click_on "Update Choose country"

    assert_text "Choose country was successfully updated"
    click_on "Back"
  end

  test "destroying a Choose country" do
    visit choose_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choose country was successfully destroyed"
  end
end
