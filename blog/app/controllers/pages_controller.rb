class PagesController < ApplicationController
	def about 
		@title = 'About Us';
		@content = 'This is the about page. Company description goes here.'

	end
end
