class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :zombie_id

      t.timestamps
    end
  end
end
