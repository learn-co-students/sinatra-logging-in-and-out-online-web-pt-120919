class Helpers
  def self.current_user(user_session)
    user = User.find(user_session[:user_id])
  end

  def self.is_logged_in?(user_session)
    !user_session[:user_id].nil?
  end
end
