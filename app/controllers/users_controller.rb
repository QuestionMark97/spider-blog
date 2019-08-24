class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]
	before_action :require_same_user, only: [:edit, :update, :destroy]
	def new
		@user = User.new	
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			flash[:success] = "Welcome to the spider blog, #{@user.username}"
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:success] = 'Your account was updated successfully'
			redirect_to user_path(@user)
		end
	end

	def show
		@user_articles = @user.articles.paginate(page: params[:page], per_page: 5).order('updated_at DESC')
	end

	def destroy
		if current_user == @user
			session[:user_id] = nil
			@user.destroy
			flash[:danger] = 'Your account and articles have been deleted'
			redirect_to root_path
		else
			@user.destroy
			flash[:danger] = 'User and all articles created by user have been deleted'
			redirect_to users_path
		end
	end

	def index
		@users = User.paginate(page: params[:page], per_page: 5)
	end

	private

	def set_user
		@user = User.find(params[:id])
	end
	
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def require_same_user
		if current_user.nil?
			flash[:danger] = 'You can only edit your own account'
			redirect_to root_path
		elsif current_user != @user
			if !current_user.admin?
				flash[:danger] = 'You can only edit your own account'
				redirect_to root_path
			end
		end
	end
end