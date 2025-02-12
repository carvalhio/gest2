class SubjectsController < ApplicationController
	before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = Subject.all
  end

  def show; end

  def new
    @subject = Subject.new
  end

  def edit 
      @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to @subject, notice: 'Disciplina criada com sucesso!'
    else
      render :new
    end
  end

  def update
      @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to subjects_path, notice: 'Disciplina atualizada com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to subjects_url, notice: 'Disciplina excluída com sucesso!'
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:subject_name, :teacher_id)
  end
end
