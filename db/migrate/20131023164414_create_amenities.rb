class CreateAmenities < ActiveRecord::Migration
  def change
    create_table(:amenities) do |t|
      t.string :name
      t.integer :user_park_id

      t.timestamps
    end
  end
end
