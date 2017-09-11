require 'test_helper'

class BioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bio_index_url
    assert_response :success
  end

  test "should get create" do
    get bio_create_url
    assert_response :success
  end

  test "should get edit" do
    get bio_edit_url
    assert_response :success
  end

  test "should get update" do
    get bio_update_url
    assert_response :success
  end

  test "should get show" do
    get bio_show_url
    assert_response :success
  end

  test "should get new" do
    get bio_new_url
    assert_response :success
  end

  test "should get destroy" do
    get bio_destroy_url
    assert_response :success
  end

end
