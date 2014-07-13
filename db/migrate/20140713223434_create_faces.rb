class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.string :image
      t.references :user, index: true

      t.timestamps
    end
  end
end
