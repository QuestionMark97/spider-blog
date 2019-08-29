class CommentsController < ApplicationController
	before_action :set_comment, except: [:create]
	before_action :require_user
	before_action :require_same_user_or_admin, only: [:destroy]
	before_action :require_same_user, only: [:edit, :update]

	def create
		@comment = Comment.new(comment_params)
		@comment.user = current_user
		@comment.article = Article.find(params[:article_id])
		if @comment.save
			flash[:success] = 'Comment was successfully created'
		end
		redirect_to article_path(@comment.article)

	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			flash[:success] = 'Comment was successfully edited'
		end
		redirect_to article_path(@comment.article)
	end

	def destroy
		
		if @comment.destroy
			flash[:danger] = 'Comment was successfully deleted'
		end
			redirect_to article_path(@comment.article)
	end

	private
	def set_comment
		@comment = Comment.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:description)
	end

	def require_same_user_or_admin
		if current_user != @comment.user && !current_user.admin?
			flash[:danger] = 'You can only edit or delete your own articles'
			redirect_to article_path(@comment.article)
		end
	end

	def require_same_user
		if current_user != @comment.user
			flash[:danger] = 'You can only edit or delete your own articles'
			redirect_to article_path(@comment.article)
		end
	end
end
