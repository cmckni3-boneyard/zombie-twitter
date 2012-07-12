class AddUsernameToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :username, :string
  end
end
