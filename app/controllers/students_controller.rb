class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    if @student = Student.new(student_params)
      @student.save
      redirect_to @student
    else
      redirect_to "/students/new"
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    if @student = Student.update(student_params)
      redirect_to "/students/#{@student.student_id}"
    else
      redirect_to "/students/edit"
    end
  end


private
def student_params
  params.require(:student).permit(:name, :mod)
end




end
