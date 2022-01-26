require "test_helper"

class ProfessionelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professionels_index_url
    assert_response :success
  end

  test "should get show" do
    get professionels_show_url
    assert_response :success
  end

  test "should get new" do
    get professionels_new_url
    assert_response :success
  end

  test "should get create" do
    get professionels_create_url
    assert_response :success
  end

  test "should get edit" do
    get professionels_edit_url
    assert_response :success
  end

  test "should get update" do
    get professionels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get professionels_destroy_url
    assert_response :success
  end
end
