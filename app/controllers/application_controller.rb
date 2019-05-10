class ApplicationController < ActionController::Base
	# before_action :authenticate_user!


	def is_super_user
		unless user_signed_in? && has_super_privileges
			flash[:alert] = "<strong>Warning</strong> you do not have permission to view this page!"
			redirect_to root_path
		end
	end


	helper_method :has_super_privileges
	def has_super_privileges
		if current_user && current_user.level && current_user.level != ""
			if current_user.level == "super"
				return true
			end
		end

		return false
	end


	def custom_error_message_rendering(errors)
		returnString = ""
		if errors.any?
			if errors.full_messages.count == 1
				return errors.full_messages.to_sentence
			else
				returnString += "<ul class='mb-0'>"
				errors.full_messages.each do |msg|
					returnString += "<li>" + msg + "</li>"
				end
				returnString += "</ul>"
			end
		end

		return returnString.html_safe
	end
end
