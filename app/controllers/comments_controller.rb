class CommentsController < ApplicationController
	def create
		@article=Article.find(params[:article_id])
		@comment=@article.comments.create(comment_params)
		@total_comment=@article.total_comment+1
		if @article.update_attributes(:total_comment=> @total_comment)
		redirect_to androidblog_path(@article)
		else
		redirect_to article_path(@article)
		end
	end
 private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :email)
    end
end
