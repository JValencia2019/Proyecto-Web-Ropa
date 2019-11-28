require 'test_helper'

class RegistroVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_ventum = registro_venta(:one)
  end

  test "should get index" do
    get registro_venta_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_ventum_url
    assert_response :success
  end

  test "should create registro_ventum" do
    assert_difference('RegistroVentum.count') do
      post registro_venta_url, params: { registro_ventum: { cant: @registro_ventum.cant, codigo: @registro_ventum.codigo, nombre: @registro_ventum.nombre, numeroBol: @registro_ventum.numeroBol, valorT: @registro_ventum.valorT, valorUni: @registro_ventum.valorUni } }
    end

    assert_redirected_to registro_ventum_url(RegistroVentum.last)
  end

  test "should show registro_ventum" do
    get registro_ventum_url(@registro_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_ventum_url(@registro_ventum)
    assert_response :success
  end

  test "should update registro_ventum" do
    patch registro_ventum_url(@registro_ventum), params: { registro_ventum: { cant: @registro_ventum.cant, codigo: @registro_ventum.codigo, nombre: @registro_ventum.nombre, numeroBol: @registro_ventum.numeroBol, valorT: @registro_ventum.valorT, valorUni: @registro_ventum.valorUni } }
    assert_redirected_to registro_ventum_url(@registro_ventum)
  end

  test "should destroy registro_ventum" do
    assert_difference('RegistroVentum.count', -1) do
      delete registro_ventum_url(@registro_ventum)
    end

    assert_redirected_to registro_venta_url
  end
end
