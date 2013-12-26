class AddWeaponIdToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :weapon_id, :integer
  end
end
