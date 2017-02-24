require 'test_helper'

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get apartments_url
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post apartments_url, params: { apartment: {  } }
    end

    assert_response 201
  end

  test "should show apartment" do
    get apartment_url(@apartment)
    assert_response :success
  end

  test "should update apartment" do
    patch apartment_url(@apartment), params: { apartment: {  } }
    assert_response 200
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete apartment_url(@apartment)
    end

    assert_response 204
  end
end
