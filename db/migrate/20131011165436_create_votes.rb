class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_park_id
      t.timestamps
    end
  end
end
