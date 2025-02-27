class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :name

  def name
    session[:name] ||= nil
  end

  def hello
    if name.empty? || name.nil?
      redirect_to login_path
    else
      render :'hello'
    end
  end

end
