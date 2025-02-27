class HighSchoolsController < ApplicationController
	before_action :set_high_school, only: [:show, :edit, :update, :destroy]
  def format_date(date)
  date.strftime("%d de %B")
end
  def index
  @high_schools = HighSchool.order(Arel.sql("
    CAST(stage AS INTEGER) ASC,
    CASE period WHEN 'Parcial' THEN 1 WHEN 'Global' THEN 2 END,
    date ASC
  "))

  @high_schools_grouped = @high_schools.group_by(&:stage).map do |stage, high_schools|
    {
      stage: stage,
      periods: high_schools.group_by(&:period).map do |period, high_schools_period|
        {
          period: period,
          count: high_schools_period.count,
          high_schools: high_schools_period
        }
      end
    }
  end
end
  def show; end

  def new
    @high_school = HighSchool.new
  end

  def edit; end

  def create
    @high_school = HighSchool.new(high_school_params)

    if @high_school.save
      redirect_to @high_school, notice: 'Registro de ensino médio criado com sucesso!'
    else
       render :new, status: :unprocessable_entity
    end
  end

  def update
      @high_school = HighSchool.find(params[:id])
      
    if @high_school.update(high_school_params)
      redirect_to @high_school, notice: 'Registro de ensino médio atualizado com sucesso!'
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
  @high_school = HighSchool.find(params[:id])

  # Destroy associated records first
  @high_school.high_school_subjects.destroy_all

  if @high_school.destroy
    redirect_to high_schools_path, notice: 'High school record was successfully deleted.'
  else
    redirect_to high_schools_path, alert: 'Error deleting high school record.'
  end
end




  private

  def set_high_school
    @high_school = HighSchool.find(params[:id])
  end

  def high_school_params
    params.require(:high_school).permit(:stage, :period, :date, subject_ids: [])
  end
end
