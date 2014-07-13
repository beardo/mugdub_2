class CreateBlackLists < ActiveRecord::Migration
  def change
    create_table :black_lists do |t|
      t.string :word

      t.timestamps
    end
  end
end
