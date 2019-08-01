class ApplicationController < ActionController::Base
	before_action :add_parameters_to_user, if: :devise_controller?

	protected

	def add_parameters_to_user
		devise_parameter_sanitizer.permit(:sign_up, keys: [:city_id])
		devise_parameter_sanitizer.permit(:account_update, keys: [:city_id])
end
end
