class CreateModerators < ActiveRecord::Migration[8.0]
  def change
    create_table :moderators do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
