class AddIndexesToAnalytics < ActiveRecord::Migration[8.0]
  def change
    add_index :analytics, :user_id
    add_index :analytics, :content_id
  end
end

