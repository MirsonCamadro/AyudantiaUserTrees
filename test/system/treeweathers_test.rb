require "application_system_test_case"

class TreeweathersTest < ApplicationSystemTestCase
  setup do
    @treeweather = treeweathers(:one)
  end

  test "visiting the index" do
    visit treeweathers_url
    assert_selector "h1", text: "Treeweathers"
  end

  test "creating a Treeweather" do
    visit treeweathers_url
    click_on "New Treeweather"

    fill_in "Tree", with: @treeweather.tree_id
    fill_in "Weather", with: @treeweather.weather_id
    click_on "Create Treeweather"

    assert_text "Treeweather was successfully created"
    click_on "Back"
  end

  test "updating a Treeweather" do
    visit treeweathers_url
    click_on "Edit", match: :first

    fill_in "Tree", with: @treeweather.tree_id
    fill_in "Weather", with: @treeweather.weather_id
    click_on "Update Treeweather"

    assert_text "Treeweather was successfully updated"
    click_on "Back"
  end

  test "destroying a Treeweather" do
    visit treeweathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treeweather was successfully destroyed"
  end
end
