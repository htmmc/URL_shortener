class UrlController < ApplicationController
	def redirect
		@pages = Page.find_by(id: params[:id])		
		if @pages.present?
			redirect_to @pages.url
		else render 'page_not_found'
		end
	end 
	def most_visited_pages
		@pages = Page.most_visited
		if @pages.empty?
			render 'page_not_found'
		end
	end
	def list
		@pages = Page.all
		if @pages.empty?
			render 'page_not_found'
		end
		
	end 
end

