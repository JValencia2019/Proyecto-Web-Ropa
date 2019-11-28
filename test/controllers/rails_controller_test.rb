require 'test_helper'

class RailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rail = rails(:one)
  end

  test "should get index" do
    get rails_url
    assert_response :success
  end

  test "should get new" do
    get new_rail_url
    assert_response :success
  end

  test "should create rail" do
    assert_difference('Rail.count') do
      post rails_url, params: { rail: { DNI: @rail.DNI, OrdendeCompra: @rail.OrdendeCompra, boleta: @rail.boleta, cantidad: @rail.cantidad, fecha: @rail.fecha, g: @rail.g, nombre: @rail.nombre, precio: @rail.precio, producto: @rail.producto, scaffold: @rail.scaffold, tipo_pago: @rail.tipo_pago, total: @rail.total } }
    end

    assert_redirected_to rail_url(Rail.last)
  end

  test "should show rail" do
    get rail_url(@rail)
    assert_response :success
  end

  test "should get edit" do
    get edit_rail_url(@rail)
    assert_response :success
  end

  test "should update rail" do
    patch rail_url(@rail), params: { rail: { DNI: @rail.DNI, OrdendeCompra: @rail.OrdendeCompra, boleta: @rail.boleta, cantidad: @rail.cantidad, fecha: @rail.fecha, g: @rail.g, nombre: @rail.nombre, precio: @rail.precio, producto: @rail.producto, scaffold: @rail.scaffold, tipo_pago: @rail.tipo_pago, total: @rail.total } }
    assert_redirected_to rail_url(@rail)
  end

  test "should destroy rail" do
    assert_difference('Rail.count', -1) do
      delete rail_url(@rail)
    end

    assert_redirected_to rails_url
  end
end
