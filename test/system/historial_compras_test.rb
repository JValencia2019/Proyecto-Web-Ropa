require "application_system_test_case"

class HistorialComprasTest < ApplicationSystemTestCase
  setup do
    @historial_compra = historial_compras(:one)
  end

  test "visiting the index" do
    visit historial_compras_url
    assert_selector "h1", text: "Historial Compras"
  end

  test "creating a Historial compra" do
    visit historial_compras_url
    click_on "New Historial Compra"

    fill_in "Boleta", with: @historial_compra.boleta
    fill_in "Cantidad", with: @historial_compra.cantidad
    fill_in "Dni", with: @historial_compra.dni
    fill_in "Fecha", with: @historial_compra.fecha
    fill_in "Nombres", with: @historial_compra.nombres
    fill_in "Precio", with: @historial_compra.precio
    fill_in "Producto", with: @historial_compra.producto
    fill_in "Tipo pago", with: @historial_compra.tipo_pago
    fill_in "Total", with: @historial_compra.total
    click_on "Create Historial compra"

    assert_text "Historial compra was successfully created"
    click_on "Back"
  end

  test "updating a Historial compra" do
    visit historial_compras_url
    click_on "Edit", match: :first

    fill_in "Boleta", with: @historial_compra.boleta
    fill_in "Cantidad", with: @historial_compra.cantidad
    fill_in "Dni", with: @historial_compra.dni
    fill_in "Fecha", with: @historial_compra.fecha
    fill_in "Nombres", with: @historial_compra.nombres
    fill_in "Precio", with: @historial_compra.precio
    fill_in "Producto", with: @historial_compra.producto
    fill_in "Tipo pago", with: @historial_compra.tipo_pago
    fill_in "Total", with: @historial_compra.total
    click_on "Update Historial compra"

    assert_text "Historial compra was successfully updated"
    click_on "Back"
  end

  test "destroying a Historial compra" do
    visit historial_compras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historial compra was successfully destroyed"
  end
end
