class AddIndexesToContents < ActiveRecord::Migration[8.0]
  def change
    unless index_exists?(:contents, :user_id)
      add_index :contents, :user_id
    end
  end
end
