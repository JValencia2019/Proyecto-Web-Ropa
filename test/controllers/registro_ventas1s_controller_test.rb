require 'test_helper'

class RegistroVentas1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_ventas1 = registro_ventas1s(:one)
  end

  test "should get index" do
    get registro_ventas1s_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_ventas1_url
    assert_response :success
  end

  test "should create registro_ventas1" do
    assert_difference('RegistroVentas1.count') do
      post registro_ventas1s_url, params: { registro_ventas1: { cantidad: @registro_ventas1.cantidad, codigo: @registro_ventas1.codigo, nombre: @registro_ventas1.nombre, numeroBoleta: @registro_ventas1.numeroBoleta, valorUnitario: @registro_ventas1.valorUnitario } }
    end

    assert_redirected_to registro_ventas1_url(RegistroVentas1.last)
  end

  test "should show registro_ventas1" do
    get registro_ventas1_url(@registro_ventas1)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_ventas1_url(@registro_ventas1)
    assert_response :success
  end

  test "should update registro_ventas1" do
    patch registro_ventas1_url(@registro_ventas1), params: { registro_ventas1: { cantidad: @registro_ventas1.cantidad, codigo: @registro_ventas1.codigo, nombre: @registro_ventas1.nombre, numeroBoleta: @registro_ventas1.numeroBoleta, valorUnitario: @registro_ventas1.valorUnitario } }
    assert_redirected_to registro_ventas1_url(@registro_ventas1)
  end

  test "should destroy registro_ventas1" do
    assert_difference('RegistroVentas1.count', -1) do
      delete registro_ventas1_url(@registro_ventas1)
    end

    assert_redirected_to registro_ventas1s_url
  end
end
