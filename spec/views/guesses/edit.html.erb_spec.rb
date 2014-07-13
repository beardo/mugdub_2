require 'rails_helper'

RSpec.describe "guesses/edit", :type => :view do
  before(:each) do
    @guess = assign(:guess, Guess.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :face => nil,
      :user => nil
    ))
  end

  it "renders the edit guess form" do
    render

    assert_select "form[action=?][method=?]", guess_path(@guess), "post" do

      assert_select "input#guess_latitude[name=?]", "guess[latitude]"

      assert_select "input#guess_longitude[name=?]", "guess[longitude]"

      assert_select "input#guess_name[name=?]", "guess[name]"

      assert_select "input#guess_face_id[name=?]", "guess[face_id]"

      assert_select "input#guess_user_id[name=?]", "guess[user_id]"
    end
  end
end
