require 'test_helper'

class OrdendeComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordende_compra = ordende_compras(:one)
  end

  test "should get index" do
    get ordende_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_ordende_compra_url
    assert_response :success
  end

  test "should create ordende_compra" do
    assert_difference('OrdendeCompra.count') do
      post ordende_compras_url, params: { ordende_compra: { DNI: @ordende_compra.DNI, boleta: @ordende_compra.boleta, cantidad: @ordende_compra.cantidad, fecha: @ordende_compra.fecha, nombre: @ordende_compra.nombre, precio: @ordende_compra.precio, producto: @ordende_compra.producto, tipo_pago: @ordende_compra.tipo_pago, total: @ordende_compra.total } }
    end

    assert_redirected_to ordende_compra_url(OrdendeCompra.last)
  end

  test "should show ordende_compra" do
    get ordende_compra_url(@ordende_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordende_compra_url(@ordende_compra)
    assert_response :success
  end

  test "should update ordende_compra" do
    patch ordende_compra_url(@ordende_compra), params: { ordende_compra: { DNI: @ordende_compra.DNI, boleta: @ordende_compra.boleta, cantidad: @ordende_compra.cantidad, fecha: @ordende_compra.fecha, nombre: @ordende_compra.nombre, precio: @ordende_compra.precio, producto: @ordende_compra.producto, tipo_pago: @ordende_compra.tipo_pago, total: @ordende_compra.total } }
    assert_redirected_to ordende_compra_url(@ordende_compra)
  end

  test "should destroy ordende_compra" do
    assert_difference('OrdendeCompra.count', -1) do
      delete ordende_compra_url(@ordende_compra)
    end

    assert_redirected_to ordende_compras_url
  end
end
