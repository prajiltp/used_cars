require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get car_new_url
    assert_response :success
  end

  test "should get create" do
    get car_create_url
    assert_response :success
  end

end
