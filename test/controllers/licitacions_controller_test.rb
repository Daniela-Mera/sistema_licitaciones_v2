require "test_helper"

class LicitacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @licitacion = licitacions(:one)
  end

  test "should get index" do
    get licitacions_url
    assert_response :success
  end

  test "should get new" do
    get new_licitacion_url
    assert_response :success
  end

  test "should create licitacion" do
    assert_difference("Licitacion.count") do
      post licitacions_url, params: { licitacion: { descripcion: @licitacion.descripcion, duracion_en_meses: @licitacion.duracion_en_meses, fecha_de_inicio: @licitacion.fecha_de_inicio, fk_estado_licitacion: @licitacion.fk_estado_licitacion, fk_region: @licitacion.fk_region, nombre_proyecto: @licitacion.nombre_proyecto, presupuesto: @licitacion.presupuesto } }
    end

    assert_redirected_to licitacion_url(Licitacion.last)
  end

  test "should show licitacion" do
    get licitacion_url(@licitacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_licitacion_url(@licitacion)
    assert_response :success
  end

  test "should update licitacion" do
    patch licitacion_url(@licitacion), params: { licitacion: { descripcion: @licitacion.descripcion, duracion_en_meses: @licitacion.duracion_en_meses, fecha_de_inicio: @licitacion.fecha_de_inicio, fk_estado_licitacion: @licitacion.fk_estado_licitacion, fk_region: @licitacion.fk_region, nombre_proyecto: @licitacion.nombre_proyecto, presupuesto: @licitacion.presupuesto } }
    assert_redirected_to licitacion_url(@licitacion)
  end

  test "should destroy licitacion" do
    assert_difference("Licitacion.count", -1) do
      delete licitacion_url(@licitacion)
    end

    assert_redirected_to licitacions_url
  end
end
