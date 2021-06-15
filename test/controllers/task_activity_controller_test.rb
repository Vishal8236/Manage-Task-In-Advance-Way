require "test_helper"

class TaskActivityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_activity_index_url
    assert_response :success
  end
end
