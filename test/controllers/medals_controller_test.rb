require "test_helper"

class MedalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medals_index_url
    assert_response :success
  end

  test "should get create" do
    get medals_create_url
    assert_response :success
  end

  test "should get destroy" do
    get medals_destroy_url
    assert_response :success
  end
end
