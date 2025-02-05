class AddIndexesToComments < ActiveRecord::Migration[8.0]
  def change
    add_index :comments, :user_id
    add_index :comments, :content_id
  end
end
