require "application_system_test_case"

class TipoEntidadsTest < ApplicationSystemTestCase
  setup do
    @tipo_entidad = tipo_entidads(:one)
  end

  test "visiting the index" do
    visit tipo_entidads_url
    assert_selector "h1", text: "Tipo entidads"
  end

  test "should create tipo entidad" do
    visit tipo_entidads_url
    click_on "New tipo entidad"

    fill_in "Descripcion", with: @tipo_entidad.descripcion
    fill_in "Entidad", with: @tipo_entidad.entidad
    click_on "Create Tipo entidad"

    assert_text "Tipo entidad was successfully created"
    click_on "Back"
  end

  test "should update Tipo entidad" do
    visit tipo_entidad_url(@tipo_entidad)
    click_on "Edit this tipo entidad", match: :first

    fill_in "Descripcion", with: @tipo_entidad.descripcion
    fill_in "Entidad", with: @tipo_entidad.entidad
    click_on "Update Tipo entidad"

    assert_text "Tipo entidad was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo entidad" do
    visit tipo_entidad_url(@tipo_entidad)
    click_on "Destroy this tipo entidad", match: :first

    assert_text "Tipo entidad was successfully destroyed"
  end
end
