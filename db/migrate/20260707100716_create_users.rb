class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # false to prevent blank usernames or emails
      t.string :username, null: false
      t.string :email, null: false

      t.timestamps
    end

    # Enforce at the database level
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
