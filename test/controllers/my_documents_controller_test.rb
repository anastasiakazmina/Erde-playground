require 'test_helper'

class MyDocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_document = my_documents(:one)
  end

  test "should get index" do
    get my_documents_url
    assert_response :success
  end

  test "should get new" do
    get new_my_document_url
    assert_response :success
  end

  test "should create my_document" do
    assert_difference('MyDocument.count') do
      post my_documents_url, params: { my_document: { body: @my_document.body, title: @my_document.title } }
    end

    assert_redirected_to my_document_url(MyDocument.last)
  end

  test "should show my_document" do
    get my_document_url(@my_document)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_document_url(@my_document)
    assert_response :success
  end

  test "should update my_document" do
    patch my_document_url(@my_document), params: { my_document: { body: @my_document.body, title: @my_document.title } }
    assert_redirected_to my_document_url(@my_document)
  end

  test "should destroy my_document" do
    assert_difference('MyDocument.count', -1) do
      delete my_document_url(@my_document)
    end

    assert_redirected_to my_documents_url
  end
end
