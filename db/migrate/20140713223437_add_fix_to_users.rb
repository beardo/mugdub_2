class AddFixToUsers < ActiveRecord::Migration
  def change
    add_column :users, :correct_guesses, :integer
  end
end
