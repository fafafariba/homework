class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index #rails will look for :index in template if undefined
  end

  def show
    @book = Book.find_by(id: params[:id])
    #problem with using
    if @book
      render :show
    else
      redirect_to books_url
    end
  end

  def new
    @book = Book.new #defaults to nil values
    #used for form to collect data to create new
    #will automatically search for :new template if method left undefinted

  end

  def create
    #never doing to have :create template
    @book = Book.new(book_params) #matches name in :new template

    if @book.save #don't do save! raises an exception
      #show user the book
      redirect_to book_url(@book) #this is from rake routes, pass in id
        #rails will extract id from book, no need for book.id
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
    render :edit
  end

  def update
    @book = Book.find_by(id: params[:id])

    if @book.update(book_params)
      redirect_to to book_url(@book)
    else
      render :edit
    end
  end

  #
  # def destroy
  #   book = Book.find_by(id: params["id"])
  #   if book.destroy
  #     redirect_to "/books" #how to use index?
  #   end
  # end
  #
  private
  def book_params
    params.require(:book).permit(
      :title, :author, :description, :category, :year
    )
  end
end
