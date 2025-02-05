class CreateTags < ActiveRecord::Migration[8.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :content_id

      t.timestamps
    end
  end
end
