class ActividadesController < ApplicationController
  before_action :set_actividad, only: %i[ show edit update destroy ]

  # GET /actividades or /actividades.json
  def index
    @actividades = Actividad.all
  end

  # GET /actividades/1 or /actividades/1.json
  def show
  end

  # GET /actividades/new
  def new
    @actividad = Actividad.new
  end

  # GET /actividades/1/edit
  def edit
  end

  # POST /actividades or /actividades.json
  def create
    @actividad = Actividad.new(actividad_params)

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to actividad_url(@actividad), notice: "Actividad was successfully created." }
        format.json { render :show, status: :created, location: @actividad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades/1 or /actividades/1.json
  def update
    respond_to do |format|
      if @actividad.update(actividad_params)
        format.html { redirect_to actividad_url(@actividad), notice: "Actividad was successfully updated." }
        format.json { render :show, status: :ok, location: @actividad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades/1 or /actividades/1.json
  def destroy
    @actividad.destroy

    respond_to do |format|
      format.html { redirect_to actividades_url, notice: "Actividad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad
      @actividad = Actividad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actividad_params
      params.require(:actividad).permit(:tipo_id, :docente_id, :titulo, :descripcion)
    end
end
