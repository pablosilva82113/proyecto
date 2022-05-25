class DireccionesTiposController < ApplicationController
  before_action :set_direcciones_tipo, only: %i[ show edit update destroy ]

  # GET /direcciones_tipos or /direcciones_tipos.json
  def index
    @direcciones_tipos = DireccionesTipo.all
  end

  # GET /direcciones_tipos/1 or /direcciones_tipos/1.json
  def show
  end

  # GET /direcciones_tipos/new
  def new
    @direcciones_tipo = DireccionesTipo.new
  end

  # GET /direcciones_tipos/1/edit
  def edit
  end

  # POST /direcciones_tipos or /direcciones_tipos.json
  def create
    @direcciones_tipo = DireccionesTipo.new(direcciones_tipo_params)

    respond_to do |format|
      if @direcciones_tipo.save
        format.html { redirect_to direcciones_tipo_url(@direcciones_tipo), notice: "Direcciones tipo was successfully created." }
        format.json { render :show, status: :created, location: @direcciones_tipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @direcciones_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direcciones_tipos/1 or /direcciones_tipos/1.json
  def update
    respond_to do |format|
      if @direcciones_tipo.update(direcciones_tipo_params)
        format.html { redirect_to direcciones_tipo_url(@direcciones_tipo), notice: "Direcciones tipo was successfully updated." }
        format.json { render :show, status: :ok, location: @direcciones_tipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @direcciones_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direcciones_tipos/1 or /direcciones_tipos/1.json
  def destroy
    @direcciones_tipo.destroy

    respond_to do |format|
      format.html { redirect_to direcciones_tipos_url, notice: "Direcciones tipo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direcciones_tipo
      @direcciones_tipo = DireccionesTipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direcciones_tipo_params
      params.require(:direcciones_tipo).permit(:tipo)
    end
end
