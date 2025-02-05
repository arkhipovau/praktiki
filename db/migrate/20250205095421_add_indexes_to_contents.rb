class AddIndexesToContents < ActiveRecord::Migration[8.0]
  def change
    add_index :contents, :user_id
    add_index :contents, :category_id
  end
end
