class CreateParks < ActiveRecord::Migration
  def up
    create_table(:parks) do |table|
      table.string :name
      table.string :address
      table.string :city
      table.string :zip_code

      table.timestamps
    end
  end

  def down
  end
end
