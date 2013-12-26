class CreateZoogles < ActiveRecord::Migration
  def change
    create_table :zoogles do |t|

      t.timestamps
    end
  end
end
