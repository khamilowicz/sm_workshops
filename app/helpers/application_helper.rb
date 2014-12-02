module ApplicationHelper

  def session_navbar
    if user_signed_in?
      "#{current_user.email} #{link_to "Log out", destroy_user_session_path, method: :delete }".html_safe
    else
      "not logged in #{ link_to "Sign in", new_user_session_path }".html_safe
    end 
  end
end
