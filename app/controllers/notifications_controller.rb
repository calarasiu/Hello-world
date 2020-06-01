class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user: current_user, read: false)
    @notifications.update(read: true)
    @unread_notifications = 0
  end
end
