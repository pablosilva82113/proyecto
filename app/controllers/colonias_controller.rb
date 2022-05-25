class ColoniasController < ApplicationController
  before_action :set_colonia, only: %i[ show edit update destroy ]

  # GET /colonias or /colonias.json
  def index
    @colonias = Colonia.all
  end

  # GET /colonias/1 or /colonias/1.json
  def show
  end

  # GET /colonias/new
  def new
    @colonia = Colonia.new
  end

  # GET /colonias/1/edit
  def edit
  end

  # POST /colonias or /colonias.json
  def create
    @colonia = Colonia.new(colonia_params)

    respond_to do |format|
      if @colonia.save
        format.html { redirect_to colonia_url(@colonia), notice: "Colonia was successfully created." }
        format.json { render :show, status: :created, location: @colonia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @colonia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colonias/1 or /colonias/1.json
  def update
    respond_to do |format|
      if @colonia.update(colonia_params)
        format.html { redirect_to colonia_url(@colonia), notice: "Colonia was successfully updated." }
        format.json { render :show, status: :ok, location: @colonia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @colonia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colonias/1 or /colonias/1.json
  def destroy
    @colonia.destroy

    respond_to do |format|
      format.html { redirect_to colonias_url, notice: "Colonia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colonia
      @colonia = Colonia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colonia_params
      params.require(:colonia).permit(:nombre_c)
    end
end
