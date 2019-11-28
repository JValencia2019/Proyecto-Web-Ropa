require 'test_helper'

class RegVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reg_ventum = reg_venta(:one)
  end

  test "should get index" do
    get reg_venta_url
    assert_response :success
  end

  test "should get new" do
    get new_reg_ventum_url
    assert_response :success
  end

  test "should create reg_ventum" do
    assert_difference('RegVentum.count') do
      post reg_venta_url, params: { reg_ventum: { cant: @reg_ventum.cant, codigo: @reg_ventum.codigo, nombre: @reg_ventum.nombre, numeroBol: @reg_ventum.numeroBol, valorT: @reg_ventum.valorT, valorUni: @reg_ventum.valorUni } }
    end

    assert_redirected_to reg_ventum_url(RegVentum.last)
  end

  test "should show reg_ventum" do
    get reg_ventum_url(@reg_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_reg_ventum_url(@reg_ventum)
    assert_response :success
  end

  test "should update reg_ventum" do
    patch reg_ventum_url(@reg_ventum), params: { reg_ventum: { cant: @reg_ventum.cant, codigo: @reg_ventum.codigo, nombre: @reg_ventum.nombre, numeroBol: @reg_ventum.numeroBol, valorT: @reg_ventum.valorT, valorUni: @reg_ventum.valorUni } }
    assert_redirected_to reg_ventum_url(@reg_ventum)
  end

  test "should destroy reg_ventum" do
    assert_difference('RegVentum.count', -1) do
      delete reg_ventum_url(@reg_ventum)
    end

    assert_redirected_to reg_venta_url
  end
end
