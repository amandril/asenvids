class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_users do |t|
      t.string :username
      t.string :password_digest
      t.string "email", :default => "", :null => false

      t.timestamps null: false
    end
  end
end
