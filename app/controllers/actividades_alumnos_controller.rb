class ActividadesAlumnosController < ApplicationController
  before_action :set_actividades_alumno, only: %i[ show edit update destroy ]

  # GET /actividades_alumnos or /actividades_alumnos.json
  def index
    @actividades_alumnos = ActividadesAlumno.all
  end

  # GET /actividades_alumnos/1 or /actividades_alumnos/1.json
  def show
  end

  # GET /actividades_alumnos/new
  def new
    @actividades_alumno = ActividadesAlumno.new
  end

  # GET /actividades_alumnos/1/edit
  def edit
  end

  # POST /actividades_alumnos or /actividades_alumnos.json
  def create
    @actividades_alumno = ActividadesAlumno.new(actividades_alumno_params)

    respond_to do |format|
      if @actividades_alumno.save
        format.html { redirect_to actividades_alumno_url(@actividades_alumno), notice: "Actividades alumno was successfully created." }
        format.json { render :show, status: :created, location: @actividades_alumno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actividades_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades_alumnos/1 or /actividades_alumnos/1.json
  def update
    respond_to do |format|
      if @actividades_alumno.update(actividades_alumno_params)
        format.html { redirect_to actividades_alumno_url(@actividades_alumno), notice: "Actividades alumno was successfully updated." }
        format.json { render :show, status: :ok, location: @actividades_alumno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actividades_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades_alumnos/1 or /actividades_alumnos/1.json
  def destroy
    @actividades_alumno.destroy

    respond_to do |format|
      format.html { redirect_to actividades_alumnos_url, notice: "Actividades alumno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividades_alumno
      @actividades_alumno = ActividadesAlumno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actividades_alumno_params
      params.require(:actividades_alumno).permit(:actividad_id, :alumno_id, :calificacion, :observaciones)
    end
end
