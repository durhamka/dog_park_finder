class CreateDogLovers < ActiveRecord::Migration
  def change
    create_table(:dog_lovers) do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
