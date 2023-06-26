class ApplicationController < ActionController::Base

  def authenticate_user
    unless session[:user]
      @user = User.new
      if @user.save
        session[:user] = @user
      end
    end
  end
end
