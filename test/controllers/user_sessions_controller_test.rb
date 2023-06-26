require "test_helper"

class UserSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_sessions_index_url
    assert_response :success
  end

  test "should get new" do
    get user_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get user_sessions_create_url
    assert_response :success
  end
end
