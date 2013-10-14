class AddDirectionToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :direction, :boolean, default: true
  end

  def down
    remove_column :votes, :direction
  end
end
