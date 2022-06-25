class LicitacionsController < ApplicationController
  before_action :set_licitacion, only: %i[ show edit update destroy ]

  # GET /licitacions or /licitacions.json
  def index
    @licitacions = Licitacion.all
  end

  # GET /licitacions/1 or /licitacions/1.json
  def show
  end

  # GET /licitacions/new
  def new
    @licitacion = Licitacion.new
  end

  # GET /licitacions/1/edit
  def edit
  end

  # POST /licitacions or /licitacions.json
  def create
    @licitacion = Licitacion.new(licitacion_params)

    respond_to do |format|
      if @licitacion.save
        format.html { redirect_to licitacion_url(@licitacion), notice: "Licitacion was successfully created." }
        format.json { render :show, status: :created, location: @licitacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @licitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licitacions/1 or /licitacions/1.json
  def update
    respond_to do |format|
      if @licitacion.update(licitacion_params)
        format.html { redirect_to licitacion_url(@licitacion), notice: "Licitacion was successfully updated." }
        format.json { render :show, status: :ok, location: @licitacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @licitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licitacions/1 or /licitacions/1.json
  def destroy
    @licitacion.destroy

    respond_to do |format|
      format.html { redirect_to licitacions_url, notice: "Licitacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_licitacion
      @licitacion = Licitacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def licitacion_params
      params.require(:licitacion).permit(:nombre_proyecto, :descripcion, :presupuesto, :duracion_en_meses, :fecha_de_inicio, :fk_region, :fk_estado_licitacion)
    end
end
