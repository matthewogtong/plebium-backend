class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def create
        @user = User.create(user_params)
        render json: @user
    end

    def bookmarks
        @user = User.find(params[:id])
        @bookmarks = @user.bookmarks

        render json: @bookmarks
    end

    def new_bookmark
        @user = User.find(params[:id])
        @bookmarks = @user.bookmarks

        @new_bookmark = Bookmark.create(bookmark_params)
        render json: @new_bookmark
    end


    private

    def user_params
        params.permit(:username, :bio, :first_name, :last_name, :id)
    end

    def bookmark_params
        params.permit(:user_id, :story_id)
    end
end
