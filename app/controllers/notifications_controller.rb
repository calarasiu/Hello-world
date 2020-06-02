class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user: current_user, read: false)
    @old_notifications = Notification.where(user: current_user, read: true)
    @notifications.update(read: true)
    @unread_notifications = 0
  end
end
