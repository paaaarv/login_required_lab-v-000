class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user


  def current_user
    if params[:name] == nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      return session[:name]
    end
  end
end
