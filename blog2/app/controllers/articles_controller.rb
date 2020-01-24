class ArticlesController < ApplicationController
	def index
		@articles = Article.all.order(created_at: :desc)
		#Instance variable @articles is intialized to all Article database entries
		#Instance variable @articles is passed to correspondig view
	end

	def show
		@article= Article.find(params[:id])
		#Instance variable @article is initiated to the Article database entry corresponding to :id.
		#Instance variable is passsed to correspondingview
		# $bin/rails routes shows that this controller request can be passed an id
		
	end

	
	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article =Article.new(article_params)	#Creates instance variable controllers initiated with checked parameters passed through article model.

		if @article.save	#Saves model in database and returns boolean indicating whether article was saved or not. IF true, and article was saved...
			redirect_to @article    #... redirect to article's show action
		else
			render'new'	#Render is used so the @article instance variable is passed to the new view action template after it is rendered, in one browser request
		end
	end

	def update
		@article = Article.find(params[:id])
 
  		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end

	 def destroy
	 	@article = Article.find(params[:id])
	 	@article.destroy

	 	redirect_to articles_path
	 end

	private
		def article_params	#Function checks if article has valid paremeters
			params.require(:article).permit(:title, :text)
			
		end
end
