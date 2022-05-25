class EspecialidadesController < ApplicationController
  before_action :set_especialidad, only: %i[ show edit update destroy ]

  # GET /especialidades or /especialidades.json
  def index
    @especialidades = Especialidad.all
  end

  # GET /especialidades/1 or /especialidades/1.json
  def show
  end

  # GET /especialidades/new
  def new
    @especialidad = Especialidad.new
  end

  # GET /especialidades/1/edit
  def edit
  end

  # POST /especialidades or /especialidades.json
  def create
    @especialidad = Especialidad.new(especialidad_params)

    respond_to do |format|
      if @especialidad.save
        format.html { redirect_to especialidad_url(@especialidad), notice: "Especialidad was successfully created." }
        format.json { render :show, status: :created, location: @especialidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialidades/1 or /especialidades/1.json
  def update
    respond_to do |format|
      if @especialidad.update(especialidad_params)
        format.html { redirect_to especialidad_url(@especialidad), notice: "Especialidad was successfully updated." }
        format.json { render :show, status: :ok, location: @especialidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidades/1 or /especialidades/1.json
  def destroy
    @especialidad.destroy

    respond_to do |format|
      format.html { redirect_to especialidades_url, notice: "Especialidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidad
      @especialidad = Especialidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especialidad_params
      params.require(:especialidad).permit(:nombre_especialidad)
    end
end
