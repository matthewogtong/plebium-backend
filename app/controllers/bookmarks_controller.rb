class BookmarksController < ApplicationController

    def delete
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy

        render json: @bookmark
    end

end
