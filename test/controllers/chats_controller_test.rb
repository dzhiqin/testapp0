require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get room" do
    get chats_room_url
    assert_response :success
  end

end
