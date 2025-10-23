class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
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
      render :new, status: :unprocessable_entity
    end
  end

   def update
    # Remove IDs vazios do form
    subject_ids = params[:teacher][:subject_ids]&.reject(&:blank?) || []

    if @teacher.update(teacher_params)
      @teacher.subject_ids = subject_ids
      redirect_to @teacher, notice: 'Professor atualizado com sucesso!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  # Limpa todas as associações do professor na tabela de junção
  @teacher.subjects.delete_all

  # Agora podemos deletar o professor
  @teacher.destroy
  redirect_to teachers_path, notice: 'Professor excluído com sucesso.'
end



  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :email, :phone, subject_ids: [])
  end
end

