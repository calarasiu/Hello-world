class ApplicationController < ActionController::Base

  def default_url_options
    { host: ENV["www.thehelloworld.dev"] || "localhost:3000" }
  end
  # [...]
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])
  end
  before_action :unread_notifications

  private

  def unread_notifications
    if current_user
      @unread_notifications = current_user.notifications.where(read: false).count
    end
  end
end
