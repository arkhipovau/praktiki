class CreateAnalytics < ActiveRecord::Migration[8.0]
  def change
    create_table :analytics do |t|
      t.string :action_type
      t.integer :user_id
      t.integer :content_id

      t.timestamps
    end
    add_index :analytics, :user_id
    add_index :analytics, :content_id
  end
end
