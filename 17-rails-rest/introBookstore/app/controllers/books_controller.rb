class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    format.html { redirect_to @book, notice: "Book was successfully created." }
  end

  def update
    format.html { redirect_to @book, notice: "Book was successfully updated." }
  end

  def destroy
    @book.destroy
    format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author_id)
  end
end
