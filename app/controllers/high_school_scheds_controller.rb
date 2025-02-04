class HighSchoolSchedsController < ApplicationController
  before_action :set_high_school_sched, only: %i[ show edit update destroy ]

  # GET /high_school_scheds or /high_school_scheds.json
  def index
    @high_school_scheds = HighSchoolSched.all
  end

  # GET /high_school_scheds/1 or /high_school_scheds/1.json
  def show
  end

  # GET /high_school_scheds/new
  def new
    @high_school_sched = HighSchoolSched.new
  end

  # GET /high_school_scheds/1/edit
  def edit
  end

  # POST /high_school_scheds or /high_school_scheds.json
  def create
    @high_school_sched = HighSchoolSched.new(high_school_sched_params)

    respond_to do |format|
      if @high_school_sched.save
        format.html { redirect_to @high_school_sched, notice: "High school sched was successfully created." }
        format.json { render :show, status: :created, location: @high_school_sched }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @high_school_sched.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_school_scheds/1 or /high_school_scheds/1.json
  def update
    respond_to do |format|
      if @high_school_sched.update(high_school_sched_params)
        format.html { redirect_to @high_school_sched, notice: "High school sched was successfully updated." }
        format.json { render :show, status: :ok, location: @high_school_sched }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @high_school_sched.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_school_scheds/1 or /high_school_scheds/1.json
  def destroy
    @high_school_sched.destroy!

    respond_to do |format|
      format.html { redirect_to high_school_scheds_path, status: :see_other, notice: "High school sched was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_school_sched
      @high_school_sched = HighSchoolSched.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def high_school_sched_params
      params.require(:high_school_sched).permit(:stage, :date, :subject_id, :exam_type)
    end
end
