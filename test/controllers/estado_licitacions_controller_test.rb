require "test_helper"

class EstadoLicitacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_licitacion = estado_licitacions(:one)
  end

  test "should get index" do
    get estado_licitacions_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_licitacion_url
    assert_response :success
  end

  test "should create estado_licitacion" do
    assert_difference("EstadoLicitacion.count") do
      post estado_licitacions_url, params: { estado_licitacion: { descripcion: @estado_licitacion.descripcion, estado: @estado_licitacion.estado } }
    end

    assert_redirected_to estado_licitacion_url(EstadoLicitacion.last)
  end

  test "should show estado_licitacion" do
    get estado_licitacion_url(@estado_licitacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_licitacion_url(@estado_licitacion)
    assert_response :success
  end

  test "should update estado_licitacion" do
    patch estado_licitacion_url(@estado_licitacion), params: { estado_licitacion: { descripcion: @estado_licitacion.descripcion, estado: @estado_licitacion.estado } }
    assert_redirected_to estado_licitacion_url(@estado_licitacion)
  end

  test "should destroy estado_licitacion" do
    assert_difference("EstadoLicitacion.count", -1) do
      delete estado_licitacion_url(@estado_licitacion)
    end

    assert_redirected_to estado_licitacions_url
  end
end
