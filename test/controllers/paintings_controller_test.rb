require "test_helper"

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get paintings_new_url
    assert_response :success
  end
end
