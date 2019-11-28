require "application_system_test_case"

class RegVentaTest < ApplicationSystemTestCase
  setup do
    @reg_ventum = reg_venta(:one)
  end

  test "visiting the index" do
    visit reg_venta_url
    assert_selector "h1", text: "Reg Venta"
  end

  test "creating a Reg ventum" do
    visit reg_venta_url
    click_on "New Reg Ventum"

    fill_in "Cant", with: @reg_ventum.cant
    fill_in "Codigo", with: @reg_ventum.codigo
    fill_in "Nombre", with: @reg_ventum.nombre
    fill_in "Numerobol", with: @reg_ventum.numeroBol
    fill_in "Valort", with: @reg_ventum.valorT
    fill_in "Valoruni", with: @reg_ventum.valorUni
    click_on "Create Reg ventum"

    assert_text "Reg ventum was successfully created"
    click_on "Back"
  end

  test "updating a Reg ventum" do
    visit reg_venta_url
    click_on "Edit", match: :first

    fill_in "Cant", with: @reg_ventum.cant
    fill_in "Codigo", with: @reg_ventum.codigo
    fill_in "Nombre", with: @reg_ventum.nombre
    fill_in "Numerobol", with: @reg_ventum.numeroBol
    fill_in "Valort", with: @reg_ventum.valorT
    fill_in "Valoruni", with: @reg_ventum.valorUni
    click_on "Update Reg ventum"

    assert_text "Reg ventum was successfully updated"
    click_on "Back"
  end

  test "destroying a Reg ventum" do
    visit reg_venta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reg ventum was successfully destroyed"
  end
end
