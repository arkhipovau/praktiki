class AnalyticsController < ApplicationController
    def create
      @analytic = Analytic.new(analytic_params)
      if @analytic.save
        render json: @analytic, status: :created
      else
        render json: @analytic.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def analytic_params
      params.require(:analytic).permit(:action_type, :user_id, :content_id)
    end
  end
  