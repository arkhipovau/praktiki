class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
    add_index :users, :email, unique: true  # Индекс для быстрого поиска по email
  end
end

#class CreateModerators < ActiveRecord::Migration[8.0]
  #def change
    #create_table :moderators do |t|
      #t.integer :user_id

      #t.timestamps
    #end
  #end
#end
