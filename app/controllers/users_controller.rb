class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    # erstellt ein Kurs aber fügt es der Datenbank noch nicht hinzu
    user = user.new(user_params)

    if user.save
     render json: user, status: :created
    else
     render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def update
  end

  private 

  def user_params
    # Erlaubt nur diese Parameter mitzugeben - Sicherheit ist cool...
    params.require(:user).permit()
  end
end
