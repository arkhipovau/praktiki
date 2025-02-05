class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :content_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :content_id
  end
end
