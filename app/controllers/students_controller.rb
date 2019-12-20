class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
    @student = self.set_student
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def activate
    @student = self.set_student
    @student.active = !@student.active # will switch it to the opposite
    @student.save
    redirect_to student_path(@student)
  end

end