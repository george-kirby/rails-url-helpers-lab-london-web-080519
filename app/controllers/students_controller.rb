class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate_student]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end