class BooksController < ApplicationController
  # index
  get "/books" do
    @books = Book.all.reverse

    erb :"books/index"
  end

  # new
  get "/books/new" do
    @years = Year.all
    erb :"books/new"
  end

  # show
  get "/books/:id" do
    @book = Book.find(params[:id])
    erb :"books/show"
  end

  # create
  post "/books" do
    binding.pry
    @book = Book.create params[:book]
    redirect "/books/#{@book.id}"
  end

  # edit
  get "/books/:id/edit" do
    @book = Book.find(params[:id])
    erb :"books/edit"
  end

  # update
  patch "/books/:id" do
    @book = Book.find(params[:id])
    @book.update params[:book]
    redirect "/books/#{@book.id}"
  end

  # delete
  delete "/books/:id" do
    Book.find(params[:id]).destroy
    redirect "/books"
  end
end
