class AddStatusToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :status, :integer
  end
end
