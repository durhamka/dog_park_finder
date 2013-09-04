class CreateUserParks < ActiveRecord::Migration
  def up
    create_table(:user_parks) do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip_code
      t.text :description
      t.binary :picture

      t.timestamps
    end
  end

  def down
  end
end
