class ChileregionsController < ApplicationController
  before_action :set_chileregion, only: %i[ show edit update destroy ]

  # GET /chileregions or /chileregions.json
  def index
    @chileregions = Chileregion.all
  end

  # GET /chileregions/1 or /chileregions/1.json
  def show
  end

  # GET /chileregions/new
  def new
    @chileregion = Chileregion.new
  end

  # GET /chileregions/1/edit
  def edit
  end

  # POST /chileregions or /chileregions.json
  def create
    @chileregion = Chileregion.new(chileregion_params)

    respond_to do |format|
      if @chileregion.save
        format.html { redirect_to chileregion_url(@chileregion), notice: "Chileregion was successfully created." }
        format.json { render :show, status: :created, location: @chileregion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chileregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chileregions/1 or /chileregions/1.json
  def update
    respond_to do |format|
      if @chileregion.update(chileregion_params)
        format.html { redirect_to chileregion_url(@chileregion), notice: "Chileregion was successfully updated." }
        format.json { render :show, status: :ok, location: @chileregion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chileregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chileregions/1 or /chileregions/1.json
  def destroy
    @chileregion.destroy

    respond_to do |format|
      format.html { redirect_to chileregions_url, notice: "Chileregion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chileregion
      @chileregion = Chileregion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chileregion_params
      params.require(:chileregion).permit(:nombre_region)
    end
end
