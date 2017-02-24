require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url
    assert_response :success
  end

  test "should create house" do
    assert_difference('House.count') do
      post houses_url, params: { house: {  } }
    end

    assert_response 201
  end

  test "should show house" do
    get house_url(@house)
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: {  } }
    assert_response 200
  end

  test "should destroy house" do
    assert_difference('House.count', -1) do
      delete house_url(@house)
    end

    assert_response 204
  end
end
