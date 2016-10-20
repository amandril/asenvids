class AdminModeController < ApplicationController
	
	before_action :confirm_logged_in

	def index
		@AdminUser = AdminUser.sorted
	end
end
