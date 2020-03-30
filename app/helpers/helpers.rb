class Helpers
    def self.current_user(session)
        # accept the session hash as an argument
        # use the `user_id` from the session hash to find the user
        # return that user
        User.find_by_id(session[:user_id])
    end

    def self.is_logged_in?(session)
        !!session[:user_id]
    end
end