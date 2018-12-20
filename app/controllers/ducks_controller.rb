class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end


  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.new(duck_params)
    if @duck.save
      redirect_to "/ducks/#{@duck.id}"
    else
      redirect_to "/ducks/new"
    end
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
    @duck = Duck.find(params[:id])
    @students = Student.all
  end

  def update
    @duck = Duck.find(params[:id])
    @duck = Duck.update(duck_params)
    if  @duck.save
      render :show
    else
      redirect_to "ducks/edit"
    end
  end


private
def duck_params
  params.require(:duck).permit(:name, :description, :student_id)
end


end
