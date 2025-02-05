class ContentsController < ApplicationController
    def index
      @contents = Content.all
      render json: @contents
    end
  
    def show
      @content = Content.find(params[:id])
      render json: @content
    end
  
    def create
      @content = Content.new(content_params)
      if @content.save
        render json: @content, status: :created
      else
        render json: @content.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @content = Content.find(params[:id])
      if @content.update(content_params)
        render json: @content
      else
        render json: @content.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @content = Content.find(params[:id])
      @content.destroy
      head :no_content
    end
  
    private
  
    def content_params
      params.require(:content).permit(:title, :body, :media_type, :user_id, :category_id)
    end
  end