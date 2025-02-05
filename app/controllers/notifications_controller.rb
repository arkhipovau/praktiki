class NotificationsController < ApplicationController
    def index
      @notifications = Notification.where(recipient_id: params[:recipient_id])
      render json: @notifications
    end
  end