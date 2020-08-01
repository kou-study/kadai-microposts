module SessionsHelper
    def current_user
        @current_user||= User.find_by(id: session[:user_id])
    end
=begin
current_userメソッドは、下記の処理と同様
    if @current_user
        return @current_user
    else
        @current_user = User.find_by(id: session[:user_id])
        return @current_user
    end
=end
    
    def logged_in?
        !!current_user
    end
=begin
    logged_in?メソッドは下記の処理と同様
    if cuurent_user
        return true
    else
        return false
    end
=end
end
