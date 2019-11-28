require "application_system_test_case"

class RegistroVentas1sTest < ApplicationSystemTestCase
  setup do
    @registro_ventas1 = registro_ventas1s(:one)
  end

  test "visiting the index" do
    visit registro_ventas1s_url
    assert_selector "h1", text: "Registro Ventas1s"
  end

  test "creating a Registro ventas1" do
    visit registro_ventas1s_url
    click_on "New Registro Ventas1"

    fill_in "Cantidad", with: @registro_ventas1.cantidad
    fill_in "Codigo", with: @registro_ventas1.codigo
    fill_in "Nombre", with: @registro_ventas1.nombre
    fill_in "Numeroboleta", with: @registro_ventas1.numeroBoleta
    fill_in "Valorunitario", with: @registro_ventas1.valorUnitario
    click_on "Create Registro ventas1"

    assert_text "Registro ventas1 was successfully created"
    click_on "Back"
  end

  test "updating a Registro ventas1" do
    visit registro_ventas1s_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @registro_ventas1.cantidad
    fill_in "Codigo", with: @registro_ventas1.codigo
    fill_in "Nombre", with: @registro_ventas1.nombre
    fill_in "Numeroboleta", with: @registro_ventas1.numeroBoleta
    fill_in "Valorunitario", with: @registro_ventas1.valorUnitario
    click_on "Update Registro ventas1"

    assert_text "Registro ventas1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro ventas1" do
    visit registro_ventas1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro ventas1 was successfully destroyed"
  end
end
