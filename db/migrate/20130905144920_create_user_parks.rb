class CreateUserParks < ActiveRecord::Migration
  def change
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
end
