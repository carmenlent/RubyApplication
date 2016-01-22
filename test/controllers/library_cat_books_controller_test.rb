require 'test_helper'

class LibraryCatBooksControllerTest < ActionController::TestCase
  setup do
    @library_cat_book = library_cat_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_cat_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_cat_book" do
    assert_difference('LibraryCatBook.count') do
      post :create, library_cat_book: { author: @library_cat_book.author, bookname: @library_cat_book.bookname, category: @library_cat_book.category }
    end

    assert_redirected_to library_cat_book_path(assigns(:library_cat_book))
  end

  test "should show library_cat_book" do
    get :show, id: @library_cat_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library_cat_book
    assert_response :success
  end

  test "should update library_cat_book" do
    patch :update, id: @library_cat_book, library_cat_book: { author: @library_cat_book.author, bookname: @library_cat_book.bookname, category: @library_cat_book.category }
    assert_redirected_to library_cat_book_path(assigns(:library_cat_book))
  end

  test "should destroy library_cat_book" do
    assert_difference('LibraryCatBook.count', -1) do
      delete :destroy, id: @library_cat_book
    end

    assert_redirected_to library_cat_books_path
  end
end
