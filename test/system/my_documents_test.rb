require "application_system_test_case"

class MyDocumentsTest < ApplicationSystemTestCase
  setup do
    @my_document = my_documents(:one)
  end

  test "visiting the index" do
    visit my_documents_url
    assert_selector "h1", text: "My Documents"
  end

  test "creating a My document" do
    visit my_documents_url
    click_on "New My Document"

    fill_in "Body", with: @my_document.body
    fill_in "Title", with: @my_document.title
    click_on "Create My document"

    assert_text "My document was successfully created"
    click_on "Back"
  end

  test "updating a My document" do
    visit my_documents_url
    click_on "Edit", match: :first

    fill_in "Body", with: @my_document.body
    fill_in "Title", with: @my_document.title
    click_on "Update My document"

    assert_text "My document was successfully updated"
    click_on "Back"
  end

  test "destroying a My document" do
    visit my_documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My document was successfully destroyed"
  end
end
