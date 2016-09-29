class TopicsController < ApplicationController

	def index
		@topics = Topic.all
	end
	def new
		@topic = Topic.new
	end
	def create
		@topic = Topic.new(params_set)
		@topic.save
		redirect_to topics_path
	end
	def show
		@topic = Topic.find(params[:id])
	end
	def edit
		@topic = Topic.find(params[:id])
	end
	def update
		@topic = Topic.find(params[:id])
		@topic.update(params_set)
		redirect_to topics_path
	end
	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_path
	end

	private
	def params_set
		params.require(:topic).permit(:name, :content)
	end
end
