require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test 'current_user method returns user when logged in' do
    # Create a test student
    student = FactoryBot.create(:student)
    
    session[:student_id] = student.id

    get root_path
    assert_equal student, @controller.current_user
  end

  test 'logged_in? method returns true when user is logged in' do
    student = FactoryBot.create(:student)
    
    # Simulate a logged-in user by setting the session
    session[:student_id] = student.id

    get root_path

    assert @controller.logged_in?
  end
end
