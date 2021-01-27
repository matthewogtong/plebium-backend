class StoriesController < ApplicationController

    def index
        @stories = Story.all
        render json: @stories
    end

    def show
        @story = Story.find(params[:id])
        render json: @story
    end

    def create
        @story = Story.create(story_params)
        render json: @story
    end

    def delete
        @story = Story.find(params[:id])
        @story.destroy
        render json: @story
    end

    private

    def story_params
        params.permit(:title, :content, :read_time, :created_at, :user_id, :topic_id)
    end

    
end
