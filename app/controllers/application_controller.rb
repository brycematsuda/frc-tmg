class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    # Returns the current logged in user or nil if there isn't one
    def current_admin
      return unless session[:admin_id]
      @current_admin ||= Admin.find_by_id(session[:admin_id])
    end

    # Make current_admin available in templates as a helper
    helper_method :current_admin

    # Filter method to enforce a login requirement
    # Apply as a before_action on any controller you want to protect
    def authenticate
      logged_in? || access_denied
    end

    # Predicate method to test for a logged in user
    def logged_in?
      current_admin.is_a? Admin
    end

    # Make logged_in? available in templates as a helpr
    helper_method :logged_in?

    def access_denied
      redirect_to login_path, notice: "Please login in to continue" and return false
    end
end
