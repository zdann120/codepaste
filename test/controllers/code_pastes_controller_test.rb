require 'test_helper'

class CodePastesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get code_pastes_index_url
    assert_response :success
  end

  test "should get show" do
    get code_pastes_show_url
    assert_response :success
  end

  test "should get new" do
    get code_pastes_new_url
    assert_response :success
  end

  test "should get edit" do
    get code_pastes_edit_url
    assert_response :success
  end

end
