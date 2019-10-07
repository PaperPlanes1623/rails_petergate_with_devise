require 'test_helper'

class EditorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editors_index_url
    assert_response :success
  end

  test "should get show" do
    get editors_show_url
    assert_response :success
  end

  test "should get new" do
    get editors_new_url
    assert_response :success
  end

  test "should get edit" do
    get editors_edit_url
    assert_response :success
  end

end
