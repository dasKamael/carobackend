class RolesController < ApplicationController
  def index
    render json: Roles.all
  end

  def create

    # erstellt eine Rolle aber fügt es der Datenbank noch nicht hinzu
    role = role.new(role_params)

    if role.save
     render json: role, status: :created
    else
     render json: role.errors, status: :unprocessable_entity
    end

  end

  def update
  end

  private

  def role_params
    # Erlaubt nur diese Parameter mitzugeben - Sicherheit ist cool...
    params.require(:role).permit()
  end
end
