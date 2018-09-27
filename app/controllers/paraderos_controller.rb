class ParaderosController < ApplicationController
  before_action :set_paradero, only: [:show, :edit, :update, :destroy]

  # GET /paraderos
  # GET /paraderos.json
  def index
    @paraderos = Paradero.all
  end

  # GET /paraderos/1
  # GET /paraderos/1.json
  def show
  end

  # GET /paraderos/new
  def new
    @paradero = Paradero.new
  end

  # GET /paraderos/1/edit
  def edit
  end

  # POST /paraderos
  # POST /paraderos.json
  def create
    @paradero = Paradero.new(paradero_params)

    respond_to do |format|
      if @paradero.save
        format.html { redirect_to @paradero, notice: 'Paradero was successfully created.' }
        format.json { render :show, status: :created, location: @paradero }
      else
        format.html { render :new }
        format.json { render json: @paradero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paraderos/1
  # PATCH/PUT /paraderos/1.json
  def update
    respond_to do |format|
      if @paradero.update(paradero_params)
        format.html { redirect_to @paradero, notice: 'Paradero was successfully updated.' }
        format.json { render :show, status: :ok, location: @paradero }
      else
        format.html { render :edit }
        format.json { render json: @paradero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paraderos/1
  # DELETE /paraderos/1.json
  def destroy
    @paradero.destroy
    respond_to do |format|
      format.html { redirect_to paraderos_url, notice: 'Paradero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradero
      @paradero = Paradero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paradero_params
      params.require(:paradero).permit(:nombre_p, :tipo_p, :ubicacion_p)
    end
end
