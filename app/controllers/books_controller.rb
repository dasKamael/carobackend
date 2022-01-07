class BooksController < ApplicationController
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

  def index # GET
    
    render json: Book.all
  end

  def create # POST 
    # erstellt ein Buch aber fügt es der Datenbank noch nicht hinzu
    book = Book.new(book_params)

   if book.save
    render json: book, status: :created
   else
    render json: book.errors, status: :unprocessable_entity
   end

  end

  def destroy
    Book.find(params[:id]).destroy!

    # Return status code ohne body
    head :no_content
  end

  private

  def book_params
    # Erlaubt nur diese Parameter mitzugeben - Sicherheit ist cool...
    params.require(:book).permit(:title, :author)
  end

  def not_destroyed
    render json: {}, status: :unprocessable_entity
  end
end
