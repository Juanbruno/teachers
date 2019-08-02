class ApplicationController < ActionController::Base
	before_action :add_parameters_to_user, if: :devise_controller?
	before_action :avatar
	before_action :large_avatar

	protected

		def add_parameters_to_user
			devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :city_id])
			devise_parameter_sanitizer.permit(:account_update, keys: [:role, :city_id])
		end

	def avatar
		@avatar = user_signed_in? ? current_user.avatar_url : nil
	end

	def large_avatar
		avatar_url = user_signed_in? ? current_user.avatar_url : nil
		@large_avatar = "#{avatar_url}&s=400"
	end
end