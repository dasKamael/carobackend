class CoursesController < ApplicationController
  def index
    render json: Course.all
  end

  def create
     # erstellt ein Buch aber fügt es der Datenbank noch nicht hinzu
     course = Course.new(course_params)

     if course.save
      render json: course, status: :created
     else
      render json: course.errors, status: :unprocessable_entity
     end
  end

  def detroy
  end

  def update
  end

  private

  def course_params
    # Erlaubt nur diese Parameter mitzugeben - Sicherheit ist cool...
    params.require(:course).permit(:name, :capacity, :is_single)
  end
end
