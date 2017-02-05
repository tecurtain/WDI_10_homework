class BooksController < ApplicationController
  def index
    @books = Book.all
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")
    else
      @books = Book.all.order("created_at DESC")
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    render 'new'
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:success] = "Book deleted"
      redirect_to books_path
    else
      flash[:error] = "Delete failed!"
      redirect_to books_path
    end
  end


  def book_params
    params.permit(:name, :genre, :pages, :year, :author, :search)
  end
end
