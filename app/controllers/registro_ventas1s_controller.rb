class RegistroVentas1sController < ApplicationController
  before_action :set_registro_ventas1, only: [:show, :edit, :update, :destroy]

  # GET /registro_ventas1s
  # GET /registro_ventas1s.json
  def index
    @registro_ventas1s = RegistroVentas1.all
  end

  # GET /registro_ventas1s/1
  # GET /registro_ventas1s/1.json
  def show
  end

  # GET /registro_ventas1s/new
  def new
    @registro_ventas1 = RegistroVentas1.new
  end

  # GET /registro_ventas1s/1/edit
  def edit
  end

  # POST /registro_ventas1s
  # POST /registro_ventas1s.json
  def create
    @registro_ventas1 = RegistroVentas1.new(registro_ventas1_params)

    respond_to do |format|
      if @registro_ventas1.save
        format.html { redirect_to @registro_ventas1, notice: 'Registro ventas creado correctamente' }
        format.json { render :show, status: :created, location: @registro_ventas1 }
      else
        format.html { render :new }
        format.json { render json: @registro_ventas1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_ventas1s/1
  # PATCH/PUT /registro_ventas1s/1.json
  def update
    respond_to do |format|
      if @registro_ventas1.update(registro_ventas1_params)
        format.html { redirect_to @registro_ventas1, notice: 'Registro ventas actualizado correctamente' }
        format.json { render :show, status: :ok, location: @registro_ventas1 }
      else
        format.html { render :edit }
        format.json { render json: @registro_ventas1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_ventas1s/1
  # DELETE /registro_ventas1s/1.json
  def destroy
    @registro_ventas1.destroy
    respond_to do |format|
      format.html { redirect_to registro_ventas1s_url, notice: 'Registro ventas eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_ventas1
      @registro_ventas1 = RegistroVentas1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_ventas1_params
      params.require(:registro_ventas1).permit(:codigo, :cantidad, :valorUnitario, :numeroBoleta, :nombre)
    end
end
