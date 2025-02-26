class AddIndexesToNotifications < ActiveRecord::Migration[7.0]
  def change
    add_index :notifications, :recipient_id unless index_exists?(:notifications, :recipient_id)
  end
end
