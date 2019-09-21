class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
  end

  # def edit
  #   @student = Student.find(params[:id])
  # end

  # def update
  #   @student = Student.find(params[:id])
  #   @student.update_attributes(active: params['student']['active'])
  #   @student.save
  #   render 'show'
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:active)
    end
end