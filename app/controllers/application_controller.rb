class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :profilecompleteduser

  before_action :configure_permitted_parameters, if: :devise_controller?

  def profilecompleteduser
    if current_user && !current_user.profilecompleted?
      redirect_to users_profile_path
    end
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gender, :i_am, :i_like, :i_look_for, :status, :age])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gender, :i_am, :i_like, :i_look_for, :status, :age])
  end
end
