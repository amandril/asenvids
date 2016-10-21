class AccessController < ApplicationController

	layout 'admin'

	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

	def index
		# display text and links
	end

	def login
		# login form
	end

	def add_video
	end

	def create_video
	end

	def edit_video
	end

	def update_video
	end

	def delete_video
	end

	def destroy_video
	end
		
	end

	def attempt_login
		if params[:username].present? && params[:password].present?
			found_user = AdminUser.where(:username => params[:username]).first
			if found_user
				authorized_user = found_user.authenticate(params[:password])
			end
		end
		if authorized_user
			# Mark user as logged in
			session[:user_id] = authorized_user.id
			session[:username] = authorized_user.username
			flash[:notice] = "You are now logged in."
			redirect_to(:action => 'index')
		else
			flash[:notice] = "Invalid username/password combination."
			redirect_to(:action => 'login')
		end
	end

	def logout
		# Mark user as logged out
		session[:user_id] = nil
		session[:username] = nil
		flash[:notice] = "Logged out"
		redirect_to(:action => 'login')
	end

	private

		def video_params
			params.require(:video).permit(:title, :video_url, :description, :position, :visible, :created_at)
		end

end
