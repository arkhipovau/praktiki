class AddIndexesToLikes < ActiveRecord::Migration[8.0]
  def change
    add_index :likes, :user_id
    add_index :likes, :content_id
    add_index :likes, [:user_id, :content_id], unique: true  # Уникальный индекс
  end
end

