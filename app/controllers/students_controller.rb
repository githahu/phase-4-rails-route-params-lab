class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def show
    student = Student.find(params[:id])
    render json: student 
  end
  def index
   
      @students = Student.where("first_name LIKE :query OR last_name LIKE :query", query: "%#{params[:name]}%")
  

    render json: @students
  end
 
    
end
