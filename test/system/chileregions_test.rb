require "application_system_test_case"

class ChileregionsTest < ApplicationSystemTestCase
  setup do
    @chileregion = chileregions(:one)
  end

  test "visiting the index" do
    visit chileregions_url
    assert_selector "h1", text: "Chileregions"
  end

  test "should create chileregion" do
    visit chileregions_url
    click_on "New chileregion"

    fill_in "Nombre region", with: @chileregion.nombre_region
    click_on "Create Chileregion"

    assert_text "Chileregion was successfully created"
    click_on "Back"
  end

  test "should update Chileregion" do
    visit chileregion_url(@chileregion)
    click_on "Edit this chileregion", match: :first

    fill_in "Nombre region", with: @chileregion.nombre_region
    click_on "Update Chileregion"

    assert_text "Chileregion was successfully updated"
    click_on "Back"
  end

  test "should destroy Chileregion" do
    visit chileregion_url(@chileregion)
    click_on "Destroy this chileregion", match: :first

    assert_text "Chileregion was successfully destroyed"
  end
end
