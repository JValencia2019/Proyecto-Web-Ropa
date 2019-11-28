require "application_system_test_case"

class RegistroVentaTest < ApplicationSystemTestCase
  setup do
    @registro_ventum = registro_venta(:one)
  end

  test "visiting the index" do
    visit registro_venta_url
    assert_selector "h1", text: "Registro Venta"
  end

  test "creating a Registro ventum" do
    visit registro_venta_url
    click_on "New Registro Ventum"

    fill_in "Cant", with: @registro_ventum.cant
    fill_in "Codigo", with: @registro_ventum.codigo
    fill_in "Nombre", with: @registro_ventum.nombre
    fill_in "Numerobol", with: @registro_ventum.numeroBol
    fill_in "Valort", with: @registro_ventum.valorT
    fill_in "Valoruni", with: @registro_ventum.valorUni
    click_on "Create Registro ventum"

    assert_text "Registro ventum was successfully created"
    click_on "Back"
  end

  test "updating a Registro ventum" do
    visit registro_venta_url
    click_on "Edit", match: :first

    fill_in "Cant", with: @registro_ventum.cant
    fill_in "Codigo", with: @registro_ventum.codigo
    fill_in "Nombre", with: @registro_ventum.nombre
    fill_in "Numerobol", with: @registro_ventum.numeroBol
    fill_in "Valort", with: @registro_ventum.valorT
    fill_in "Valoruni", with: @registro_ventum.valorUni
    click_on "Update Registro ventum"

    assert_text "Registro ventum was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro ventum" do
    visit registro_venta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro ventum was successfully destroyed"
  end
end
