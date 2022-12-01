class RenameUsernameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :usename, :username
  end
end
