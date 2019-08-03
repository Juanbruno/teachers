class RegistrationsController < Devise::RegistrationsController
	
	protected

		def after_sign_up_path_for(resource)
			if params[:role] == "student"
				new_student_path(role: params[:role])
			elsif params[:role] == "teacher"
				root_path(role: params[:role])
			end
		end
end