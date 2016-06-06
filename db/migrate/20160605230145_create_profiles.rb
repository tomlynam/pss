class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :episode
      t.string :character
      t.text :bio
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
