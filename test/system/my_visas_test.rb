require "application_system_test_case"

class MyVisasTest < ApplicationSystemTestCase
  setup do
    @my_visa = my_visas(:one)
  end

  test "visiting the index" do
    visit my_visas_url
    assert_selector "h1", text: "My Visas"
  end

  test "creating a My visa" do
    visit my_visas_url
    click_on "New My Visa"

    fill_in "Body", with: @my_visa.body
    fill_in "Title", with: @my_visa.title
    click_on "Create My visa"

    assert_text "My visa was successfully created"
    click_on "Back"
  end

  test "updating a My visa" do
    visit my_visas_url
    click_on "Edit", match: :first

    fill_in "Body", with: @my_visa.body
    fill_in "Title", with: @my_visa.title
    click_on "Update My visa"

    assert_text "My visa was successfully updated"
    click_on "Back"
  end

  test "destroying a My visa" do
    visit my_visas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My visa was successfully destroyed"
  end
end
