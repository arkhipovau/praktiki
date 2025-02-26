class AddIndexesToAnalytics < ActiveRecord::Migration[7.0]
  def change
    add_index :analytics, :user_id unless index_exists?(:analytics, :user_id)
  end
end

