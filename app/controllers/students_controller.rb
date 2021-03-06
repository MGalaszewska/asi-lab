class StudentsController < ApplicationController

  def new
    if user_signed_in?
      @student = Student.new
    else
      redirect_to new_user_session_path, :notice => "This page is only available to logged-in users"
    end
  end

  def edit
    if user_signed_in?
        @student = Student.find(params[:id])
    else
        redirect_to new_user_session_path, :notice => "This page is only available to logged-in users"
    end
  end

  def index
     @students = Student.all.order('created_at DESC').page(params[:page]).per_page(10)
   end

  def show
     @student = Student.find(params[:id])
   end

def create
  @student = Student.new(student_params)

    if @student.save
    redirect_to @student
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    if user_signed_in?
      @student = Student.find(params[:id])
      @student.destroy

      redirect_to students_path
    else
      redirect_to new_user_session_path, :notice => "This page is only available to logged-in users"
    end
end


private
  def student_params
    params.require(:student).permit(:name, :surname, :interest, :image)
  end
end
