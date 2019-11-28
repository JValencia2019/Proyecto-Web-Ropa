require "application_system_test_case"

class OrdendeComprasTest < ApplicationSystemTestCase
  setup do
    @ordende_compra = ordende_compras(:one)
  end

  test "visiting the index" do
    visit ordende_compras_url
    assert_selector "h1", text: "Ordende Compras"
  end

  test "creating a Ordende compra" do
    visit ordende_compras_url
    click_on "New Ordende Compra"

    fill_in "Dni", with: @ordende_compra.DNI
    fill_in "Boleta", with: @ordende_compra.boleta
    fill_in "Cantidad", with: @ordende_compra.cantidad
    fill_in "Fecha", with: @ordende_compra.fecha
    fill_in "Nombre", with: @ordende_compra.nombre
    fill_in "Precio", with: @ordende_compra.precio
    fill_in "Producto", with: @ordende_compra.producto
    fill_in "Tipo pago", with: @ordende_compra.tipo_pago
    fill_in "Total", with: @ordende_compra.total
    click_on "Create Ordende compra"

    assert_text "Ordende compra was successfully created"
    click_on "Back"
  end

  test "updating a Ordende compra" do
    visit ordende_compras_url
    click_on "Edit", match: :first

    fill_in "Dni", with: @ordende_compra.DNI
    fill_in "Boleta", with: @ordende_compra.boleta
    fill_in "Cantidad", with: @ordende_compra.cantidad
    fill_in "Fecha", with: @ordende_compra.fecha
    fill_in "Nombre", with: @ordende_compra.nombre
    fill_in "Precio", with: @ordende_compra.precio
    fill_in "Producto", with: @ordende_compra.producto
    fill_in "Tipo pago", with: @ordende_compra.tipo_pago
    fill_in "Total", with: @ordende_compra.total
    click_on "Update Ordende compra"

    assert_text "Ordende compra was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordende compra" do
    visit ordende_compras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordende compra was successfully destroyed"
  end
end
