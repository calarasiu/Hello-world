class ApplicationController < ActionController::Base
<<<<<<< HEAD

  def default_url_options
  { host: ENV["www.thehelloworld.dev"] || "localhost:3000" }
  end

=======
  def default_url_options
  { host: ENV["www.thehelloworld.dev"] || "localhost:3000" }
end
>>>>>>> e93321dbf577b908350c50af7d6b7298ce2e20e1
  # [...]
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
