module ApplicationHelper
#This method will see if client is logged in or not, if client logs out, their info will be removed.
    def session_link
      if logged_in?
        link_to("Logout", logout_path, method: :delete)
      else
        link_to("Login", login_path)
      end
    end
  end
  