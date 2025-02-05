class AddIndexesToNotifications < ActiveRecord::Migration[8.0]
  def change
    add_index :notifications, :recipient_id
  end
end
