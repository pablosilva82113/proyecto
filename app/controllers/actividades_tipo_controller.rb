class ActividadesTipoController < ApplicationController
  before_action :set_actividad_tipo, only: %i[ show edit update destroy ]

  # GET /actividades_tipo or /actividades_tipo.json
  def index
    @actividades_tipo = ActividadTipo.all
  end

  # GET /actividades_tipo/1 or /actividades_tipo/1.json
  def show
  end

  # GET /actividades_tipo/new
  def new
    @actividad_tipo = ActividadTipo.new
  end

  # GET /actividades_tipo/1/edit
  def edit
  end

  # POST /actividades_tipo or /actividades_tipo.json
  def create
    @actividad_tipo = ActividadTipo.new(actividad_tipo_params)

    respond_to do |format|
      if @actividad_tipo.save
        format.html { redirect_to actividad_tipo_url(@actividad_tipo), notice: "Actividad tipo was successfully created." }
        format.json { render :show, status: :created, location: @actividad_tipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actividad_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades_tipo/1 or /actividades_tipo/1.json
  def update
    respond_to do |format|
      if @actividad_tipo.update(actividad_tipo_params)
        format.html { redirect_to actividad_tipo_url(@actividad_tipo), notice: "Actividad tipo was successfully updated." }
        format.json { render :show, status: :ok, location: @actividad_tipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actividad_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades_tipo/1 or /actividades_tipo/1.json
  def destroy
    @actividad_tipo.destroy

    respond_to do |format|
      format.html { redirect_to actividades_tipo_url, notice: "Actividad tipo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_tipo
      @actividad_tipo = ActividadTipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actividad_tipo_params
      params.require(:actividad_tipo).permit(:tipo)
    end
end
