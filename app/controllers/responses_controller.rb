class ResponsesController < ApplicationController
    def index
        @responses = Response.all
        render json: @responses
    end

    def create
        @response= Response.create(response_params)
        render json: @response
    end

    private

    def response_params
        params.permit(:content, :snaps, :story_id)
    end
end
