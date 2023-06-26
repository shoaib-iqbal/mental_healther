require "test_helper"

class TherapySessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get therapy_sessions_index_url
    assert_response :success
  end

  test "should get new" do
    get therapy_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get therapy_sessions_create_url
    assert_response :success
  end
end
