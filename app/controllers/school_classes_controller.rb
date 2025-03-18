class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: %i[ show edit update destroy ]

 
  # GET /school_classes or /school_classes.json
  def index
       if params[:shift].present?
      @school_classes = SchoolClass.where(shift: params[:shift])
    else
      @school_classes = SchoolClass.all
    end

    @total_adpt = @school_classes.sum(:adpt)  # Sum all adapted tests
    # Apply custom sorting logic
    @school_classes = @school_classes.order(Arel.sql("CASE 
      WHEN level = 'Ensino Infantil' THEN 1
      WHEN level = 'Ensino Fundamental Anos Iniciais' THEN 2
      WHEN level = 'Ensino Fundamental Anos Finais' THEN 3
      WHEN level = 'Ensino Médio' THEN 4
      ELSE 4 END"), :grade, :shift)
  end


  # GET /school_classes/1 or /school_classes/1.json
  def show
  end

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
  end

  # GET /school_classes/1/edit
  def edit
  end

  # POST /school_classes or /school_classes.json
  def create
    @school_class = SchoolClass.new(school_class_params)

    respond_to do |format|
      if @school_class.save
        format.html { redirect_to @school_class, notice: "Turma cadastrada!" }
        format.json { render :show, status: :created, location: @school_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_classes/1 or /school_classes/1.json
def update
  @school_class = SchoolClass.find(params[:id]) # Ensure we find the correct class

  respond_to do |format|
    if @school_class.update(school_class_params)
      format.html { redirect_to school_classes_path, notice: "Turma atualizada!." } # Redirect to index instead of show
      format.json { render :show, status: :ok, location: @school_class }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @school_class.errors, status: :unprocessable_entity }
    end
  end
end




  

  # DELETE /school_classes/1 or /school_classes/1.json
  def destroy
    @school_class.destroy!

    respond_to do |format|
      format.html { redirect_to school_classes_path, status: :see_other, notice: "Turma deletada!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_class_params
      params.require(:school_class).permit(:grade, :level, :quantity, :identifier, :shift, :adpt)
    end

end





private

def teacher_params
  params.require(:teacher).permit(:name, :email, :teacher_id, subject_ids: [])
end