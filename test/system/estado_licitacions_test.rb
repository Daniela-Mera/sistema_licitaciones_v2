require "application_system_test_case"

class EstadoLicitacionsTest < ApplicationSystemTestCase
  setup do
    @estado_licitacion = estado_licitacions(:one)
  end

  test "visiting the index" do
    visit estado_licitacions_url
    assert_selector "h1", text: "Estado licitacions"
  end

  test "should create estado licitacion" do
    visit estado_licitacions_url
    click_on "New estado licitacion"

    fill_in "Descripcion", with: @estado_licitacion.descripcion
    fill_in "Estado", with: @estado_licitacion.estado
    click_on "Create Estado licitacion"

    assert_text "Estado licitacion was successfully created"
    click_on "Back"
  end

  test "should update Estado licitacion" do
    visit estado_licitacion_url(@estado_licitacion)
    click_on "Edit this estado licitacion", match: :first

    fill_in "Descripcion", with: @estado_licitacion.descripcion
    fill_in "Estado", with: @estado_licitacion.estado
    click_on "Update Estado licitacion"

    assert_text "Estado licitacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Estado licitacion" do
    visit estado_licitacion_url(@estado_licitacion)
    click_on "Destroy this estado licitacion", match: :first

    assert_text "Estado licitacion was successfully destroyed"
  end
end
