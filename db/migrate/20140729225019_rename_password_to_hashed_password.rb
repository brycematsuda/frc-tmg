class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def change
    rename_column :admins, :password, :hashed_password
  end
end
