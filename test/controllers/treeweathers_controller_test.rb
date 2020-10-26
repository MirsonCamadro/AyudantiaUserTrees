require 'test_helper'

class TreeweathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treeweather = treeweathers(:one)
  end

  test "should get index" do
    get treeweathers_url
    assert_response :success
  end

  test "should get new" do
    get new_treeweather_url
    assert_response :success
  end

  test "should create treeweather" do
    assert_difference('Treeweather.count') do
      post treeweathers_url, params: { treeweather: { tree_id: @treeweather.tree_id, weather_id: @treeweather.weather_id } }
    end

    assert_redirected_to treeweather_url(Treeweather.last)
  end

  test "should show treeweather" do
    get treeweather_url(@treeweather)
    assert_response :success
  end

  test "should get edit" do
    get edit_treeweather_url(@treeweather)
    assert_response :success
  end

  test "should update treeweather" do
    patch treeweather_url(@treeweather), params: { treeweather: { tree_id: @treeweather.tree_id, weather_id: @treeweather.weather_id } }
    assert_redirected_to treeweather_url(@treeweather)
  end

  test "should destroy treeweather" do
    assert_difference('Treeweather.count', -1) do
      delete treeweather_url(@treeweather)
    end

    assert_redirected_to treeweathers_url
  end
end
