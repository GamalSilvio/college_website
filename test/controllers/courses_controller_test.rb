require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test 'index action returns success' do
    get courses_url

    assert_response :success
  end

  test 'new action returns success' do
    get new_course_url

    assert_response :success
  end

end
