require "test_helper"

class ChileregionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chileregion = chileregions(:one)
  end

  test "should get index" do
    get chileregions_url
    assert_response :success
  end

  test "should get new" do
    get new_chileregion_url
    assert_response :success
  end

  test "should create chileregion" do
    assert_difference("Chileregion.count") do
      post chileregions_url, params: { chileregion: { nombre_region: @chileregion.nombre_region } }
    end

    assert_redirected_to chileregion_url(Chileregion.last)
  end

  test "should show chileregion" do
    get chileregion_url(@chileregion)
    assert_response :success
  end

  test "should get edit" do
    get edit_chileregion_url(@chileregion)
    assert_response :success
  end

  test "should update chileregion" do
    patch chileregion_url(@chileregion), params: { chileregion: { nombre_region: @chileregion.nombre_region } }
    assert_redirected_to chileregion_url(@chileregion)
  end

  test "should destroy chileregion" do
    assert_difference("Chileregion.count", -1) do
      delete chileregion_url(@chileregion)
    end

    assert_redirected_to chileregions_url
  end
end
