class EstadoLicitacionsController < ApplicationController
  before_action :set_estado_licitacion, only: %i[ show edit update destroy ]

  # GET /estado_licitacions or /estado_licitacions.json
  def index
    @estado_licitacions = EstadoLicitacion.all
  end

  # GET /estado_licitacions/1 or /estado_licitacions/1.json
  def show
  end

  # GET /estado_licitacions/new
  def new
    @estado_licitacion = EstadoLicitacion.new
  end

  # GET /estado_licitacions/1/edit
  def edit
  end

  # POST /estado_licitacions or /estado_licitacions.json
  def create
    @estado_licitacion = EstadoLicitacion.new(estado_licitacion_params)

    respond_to do |format|
      if @estado_licitacion.save
        format.html { redirect_to estado_licitacion_url(@estado_licitacion), notice: "Estado licitacion was successfully created." }
        format.json { render :show, status: :created, location: @estado_licitacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estado_licitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_licitacions/1 or /estado_licitacions/1.json
  def update
    respond_to do |format|
      if @estado_licitacion.update(estado_licitacion_params)
        format.html { redirect_to estado_licitacion_url(@estado_licitacion), notice: "Estado licitacion was successfully updated." }
        format.json { render :show, status: :ok, location: @estado_licitacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estado_licitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_licitacions/1 or /estado_licitacions/1.json
  def destroy
    @estado_licitacion.destroy

    respond_to do |format|
      format.html { redirect_to estado_licitacions_url, notice: "Estado licitacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_licitacion
      @estado_licitacion = EstadoLicitacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estado_licitacion_params
      params.require(:estado_licitacion).permit(:estado, :descripcion)
    end
end
