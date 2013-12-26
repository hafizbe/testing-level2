class AddLatitudeToZoogle < ActiveRecord::Migration
  def change
    add_column :zoogles, :latitude, :integer
  end
end
