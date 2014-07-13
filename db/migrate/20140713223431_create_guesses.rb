class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.references :face, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
