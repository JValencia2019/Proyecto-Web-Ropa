class OrdendeComprasController < ApplicationController
  before_action :set_ordende_compra, only: [:show, :edit, :update, :destroy]

  # GET /ordende_compras
  # GET /ordende_compras.json
  def index
    @ordende_compras = OrdendeCompra.all
  end

  # GET /ordende_compras/1
  # GET /ordende_compras/1.json
  def show
  end

  # GET /ordende_compras/new
  def new
    @ordende_compra = OrdendeCompra.new
  end

  # GET /ordende_compras/1/edit
  def edit
  end

  # POST /ordende_compras
  # POST /ordende_compras.json
  def create
    @ordende_compra = OrdendeCompra.new(ordende_compra_params)

    respond_to do |format|
      if @ordende_compra.save
        format.html { redirect_to @ordende_compra, notice: 'Ordende compra was successfully created.' }
        format.json { render :show, status: :created, location: @ordende_compra }
      else
        format.html { render :new }
        format.json { render json: @ordende_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordende_compras/1
  # PATCH/PUT /ordende_compras/1.json
  def update
    respond_to do |format|
      if @ordende_compra.update(ordende_compra_params)
        format.html { redirect_to @ordende_compra, notice: 'Ordende compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordende_compra }
      else
        format.html { render :edit }
        format.json { render json: @ordende_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordende_compras/1
  # DELETE /ordende_compras/1.json
  def destroy
    @ordende_compra.destroy
    respond_to do |format|
      format.html { redirect_to ordende_compras_url, notice: 'Ordende compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordende_compra
      @ordende_compra = OrdendeCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordende_compra_params
      params.require(:ordende_compra).permit(:fecha, :producto, :cantidad, :precio, :boleta, :DNI, :nombre, :tipo_pago, :total)
    end
end
