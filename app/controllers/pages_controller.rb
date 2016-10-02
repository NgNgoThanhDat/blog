class PagesController < ApplicationController
	def index
		@pages = Page.order("published_at DESC")
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.create!(page_params)
		@page.published_at = Time.now
		if @page.save
		    redirect_to @page
		else
		    render 'new'
		end
	end

	def show
		@page = Page.find(params[:id])
	end

	private
	def page_params
		params.require(:page).permit(:title, :body)
	end
end