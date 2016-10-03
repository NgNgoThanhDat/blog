class CommentsController < ApplicationController
	def create
		@page = Page.find(params[:pages_id])
		@comment = @page.comments.create!(comment_params)
		redirect_to page
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end