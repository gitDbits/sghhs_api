class RenameEmailAddressAndPasswordDigestFields < ActiveRecord::Migration[8.0]
  def up
    remove_index :users, :email_address
    
    rename_column :users, :email_address, :email
    rename_column :users, :password_digest, :password
    
    add_index :users, :email, unique: true
  end

  def down
    remove_index :users, :email
    
    rename_column :users, :email, :email_address
    rename_column :users, :password, :password_digest
    
    add_index :users, :email_address, unique: true
  end
end
