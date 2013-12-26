class ChangeStatusTypeInZombie < ActiveRecord::Migration
  def change
    change_column :zombies, :status, :string
  end
end
