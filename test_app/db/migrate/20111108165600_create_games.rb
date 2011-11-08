class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :gametime
      t.integer :list1_id
      t.integer :list2_id
      t.boolean :pending
      t.boolean :cancelled
      t.boolean :forfeited
      t.integer :winner_id

      t.timestamps
    end
  end
end
