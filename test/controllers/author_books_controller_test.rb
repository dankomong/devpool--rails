require 'test_helper'

class AuthorBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get author_books_index_url
    assert_response :success
  end

  test "should get new" do
    get author_books_new_url
    assert_response :success
  end

  test "should get show" do
    get author_books_show_url
    assert_response :success
  end

  test "should get create" do
    get author_books_create_url
    assert_response :success
  end

  test "should get edit" do
    get author_books_edit_url
    assert_response :success
  end

  test "should get update" do
    get author_books_update_url
    assert_response :success
  end

end
