class LibraryCatBooksController < ApplicationController
  before_action :set_library_cat_book, only: [:show, :edit, :update, :destroy]

  # GET /library_cat_books
  # GET /library_cat_books.json
  def index
    @library_cat_books = LibraryCatBook.all
  end

  # GET /library_cat_books/1
  # GET /library_cat_books/1.json
  def show
  end

  # GET /library_cat_books/new
  def new
    @library_cat_book = LibraryCatBook.new
  end

  # GET /library_cat_books/1/edit
  def edit
  end

  # POST /library_cat_books
  # POST /library_cat_books.json
  def create
    @library_cat_book = LibraryCatBook.new(library_cat_book_params)

    respond_to do |format|
      if @library_cat_book.save
        format.html { redirect_to @library_cat_book, notice: 'Library cat book was successfully created.' }
        format.json { render :show, status: :created, location: @library_cat_book }
      else
        format.html { render :new }
        format.json { render json: @library_cat_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_cat_books/1
  # PATCH/PUT /library_cat_books/1.json
  def update
    respond_to do |format|
      if @library_cat_book.update(library_cat_book_params)
        format.html { redirect_to @library_cat_book, notice: 'Library cat book was successfully updated.' }
        format.json { render :show, status: :ok, location: @library_cat_book }
      else
        format.html { render :edit }
        format.json { render json: @library_cat_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_cat_books/1
  # DELETE /library_cat_books/1.json
  def destroy
    @library_cat_book.destroy
    respond_to do |format|
      format.html { redirect_to library_cat_books_url, notice: 'Library cat book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_cat_book
      @library_cat_book = LibraryCatBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_cat_book_params
      params.require(:library_cat_book).permit(:bookname, :author, :category)
    end
end
