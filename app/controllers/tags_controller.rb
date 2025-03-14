class TagsController < ApplicationController
    def create
      @tag = Tag.new(tag_params)
      if @tag.save
        render json: @tag, status: :created
      else
        render json: @tag.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def tag_params
      params.require(:tag).permit(:name, :content_id)
    end
  end
  