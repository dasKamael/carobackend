class MedalsController < ApplicationController
  def index
    render json: Medals.all
  end

  def create
    
    # erstellt eine Medaille aber fügt es der Datenbank noch nicht hinzu
    medal = medal.new(medal_params)

    if medal.save
     render json: medal, status: :created
    else
     render json: medal.errors, status: :unprocessable_entity
    end

  end

  def destroy
  end


  private

  def medal_params
    # Erlaubt nur diese Parameter mitzugeben - Sicherheit ist cool...
    params.require(:medal).permit()
  end
end
