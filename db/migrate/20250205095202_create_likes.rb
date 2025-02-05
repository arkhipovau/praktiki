class CreateLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :content_id

      t.timestamps
    end
    add_index :likes, [:user_id, :content_id], unique: true  # Уникальный индекс для предотвращения двойных лайков
  end
end
