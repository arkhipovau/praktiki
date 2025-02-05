class ModeratorsController < ApplicationController
    def index
      @moderators = Moderator.all
      render json: @moderators
    end
  
    def show
      @moderator = Moderator.find(params[:id])
      render json: @moderator
    end
  end