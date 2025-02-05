class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.string :message
      t.integer :recipient_id
      t.boolean :read, default: false

      t.timestamps
    end
    add_index :notifications, :recipient_id
  end
end
