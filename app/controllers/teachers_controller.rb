class TeachersController < ApplicationController
	before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    @subjects = @teacher.subjects
   end

  def new
    @teacher = Teacher.new
  end

  def edit; end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher, notice: 'Professor criado com sucesso!'
    else
      render :new
    end
  end

def update
  @teacher = Teacher.find(params[:id])
  if @teacher.update(teacher_params)
    @teacher.subject_ids = params[:teacher][:subject_ids]
    @teacher.save
    redirect_to teachers_path, notice: 'Professor atualizado com sucesso!'
  else
    render :edit
  end
end

  def destroy
    @teacher.destroy
    redirect_to teachers_url, notice: 'Professor excluído com sucesso!'
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :email, :phone, subject_ids: [])
  end
end




