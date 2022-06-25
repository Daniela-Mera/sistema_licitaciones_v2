require "application_system_test_case"

class LicitacionsTest < ApplicationSystemTestCase
  setup do
    @licitacion = licitacions(:one)
  end

  test "visiting the index" do
    visit licitacions_url
    assert_selector "h1", text: "Licitacions"
  end

  test "should create licitacion" do
    visit licitacions_url
    click_on "New licitacion"

    fill_in "Descripcion", with: @licitacion.descripcion
    fill_in "Duracion en meses", with: @licitacion.duracion_en_meses
    fill_in "Fecha de inicio", with: @licitacion.fecha_de_inicio
    fill_in "Fk estado licitacion", with: @licitacion.fk_estado_licitacion
    fill_in "Fk region", with: @licitacion.fk_region
    fill_in "Nombre proyecto", with: @licitacion.nombre_proyecto
    fill_in "Presupuesto", with: @licitacion.presupuesto
    click_on "Create Licitacion"

    assert_text "Licitacion was successfully created"
    click_on "Back"
  end

  test "should update Licitacion" do
    visit licitacion_url(@licitacion)
    click_on "Edit this licitacion", match: :first

    fill_in "Descripcion", with: @licitacion.descripcion
    fill_in "Duracion en meses", with: @licitacion.duracion_en_meses
    fill_in "Fecha de inicio", with: @licitacion.fecha_de_inicio
    fill_in "Fk estado licitacion", with: @licitacion.fk_estado_licitacion
    fill_in "Fk region", with: @licitacion.fk_region
    fill_in "Nombre proyecto", with: @licitacion.nombre_proyecto
    fill_in "Presupuesto", with: @licitacion.presupuesto
    click_on "Update Licitacion"

    assert_text "Licitacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Licitacion" do
    visit licitacion_url(@licitacion)
    click_on "Destroy this licitacion", match: :first

    assert_text "Licitacion was successfully destroyed"
  end
end
