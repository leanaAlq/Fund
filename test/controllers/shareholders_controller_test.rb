require 'test_helper'

class ShareholdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shareholders_index_url
    assert_response :success
  end

  test "should get show" do
    get shareholders_show_url
    assert_response :success
  end

  test "should get new" do
    get shareholders_new_url
    assert_response :success
  end

  test "should get edit" do
    get shareholders_edit_url
    assert_response :success
  end

end
