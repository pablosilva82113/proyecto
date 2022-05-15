class CarrerasController < ApplicationController
  before_action :set_carrera, only: %i[ show edit update destroy ]

  # GET /carreras or /carreras.json
  def index
    @carreras = Carrera.all
  end

  # GET /carreras/1 or /carreras/1.json
  def show
  end

  # GET /carreras/new
  def new
    @carrera = Carrera.new
  end

  # GET /carreras/1/edit
  def edit
  end

  # POST /carreras or /carreras.json
  def create
    @carrera = Carrera.new(carrera_params)

    respond_to do |format|
      if @carrera.save
        format.html { redirect_to carrera_url(@carrera), notice: "Carrera was successfully created." }
        format.json { render :show, status: :created, location: @carrera }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carreras/1 or /carreras/1.json
  def update
    respond_to do |format|
      if @carrera.update(carrera_params)
        format.html { redirect_to carrera_url(@carrera), notice: "Carrera was successfully updated." }
        format.json { render :show, status: :ok, location: @carrera }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carreras/1 or /carreras/1.json
  def destroy
    @carrera.destroy

    respond_to do |format|
      format.html { redirect_to carreras_url, notice: "Carrera was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera
      @carrera = Carrera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrera_params
      params.require(:carrera).permit(:siglas, :carrera)
    end
end
