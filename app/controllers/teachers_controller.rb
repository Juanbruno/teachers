class TeachersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :is_student?, only: [:index, :show]
  before_action :is_teacher?, only: [:edit, :update, :destroy ]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user

    # de cualquiera
    @teacher.user.update!(role: "teacher")
    # current_user.update!(role: "teacher")

    if @teacher.save
      redirect_to teacher_path(@teacher), notice: "Teacher saved"
    else
      flash[:alert] = "Teacher not saved."
      render :new
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    ###
  end

  def update
    
  end

  def destroy
    
  end

  private
    def teacher_params
      params.require(:teacher).permit(:type_id, :phone, :name, :status)
    end

    def is_student?
      unless current_user.student?
        redirect_to root_path, alert: "You don't have permissions, you are not a student"
      end
    end

    def is_teacher?
      unless current_user.teacher?
        redirect_to root_path, alert: "You don't have permissions, you are not a teacher"
      end
    end
end
