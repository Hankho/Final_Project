class TopicsController < ApplicationController
	before_action :set_topic, :only => [:show, :edit, :update, :destroy]
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
		
	end
	def edit
		
	end
	def update
		@topic.update(params_set)
		redirect_to topics_path
	end
	def destroy
		@topic.destroy
		redirect_to topics_path
	end

	private
	def params_set
		params.require(:topic).permit(:name, :content)
	end
	def set_topic
		@topic = Topic.find(params[:id])
	end
end
