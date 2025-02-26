class AddIndexesToLikes < ActiveRecord::Migration[7.0]
  def change
    add_index :likes, :user_id unless index_exists?(:likes, :user_id)
    add_index :likes, :content_id unless index_exists?(:likes, :content_id)
    add_index :likes, [:user_id, :content_id], unique: true unless index_exists?(:likes, [:user_id, :content_id])
  end
end

