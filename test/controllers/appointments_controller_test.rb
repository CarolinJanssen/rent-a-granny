require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get grannies:references" do
    get appointments_grannies:references_url
    assert_response :success
  end

  test "should get users:references" do
    get appointments_users:references_url
    assert_response :success
  end

end
