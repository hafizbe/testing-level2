class AddLongitudeToZoogle < ActiveRecord::Migration
  def change
    add_column :zoogles, :longitude, :integer
  end
end
