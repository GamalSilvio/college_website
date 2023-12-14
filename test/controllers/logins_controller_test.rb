require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get new_login_url

    assert_response :success
  end

end
