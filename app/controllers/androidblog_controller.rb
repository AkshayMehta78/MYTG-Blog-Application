class AndroidblogController < ApplicationController
def new
		 @article = Article.new
	end
  def index
  		 if params[:tag].present? 
      		@articles = Article.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 10)
   		 else 
     		 @articles =Article.paginate(page: params[:page], per_page: 10)
    	 end  
	end
	def show
  		 @article = Article.find(params[:id])
  end

end
