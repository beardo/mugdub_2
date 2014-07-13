require 'rails_helper'

RSpec.describe "guesses/new", :type => :view do
  before(:each) do
    assign(:guess, Guess.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :face => nil,
      :user => nil
    ))
  end

  it "renders new guess form" do
    render

    assert_select "form[action=?][method=?]", guesses_path, "post" do

      assert_select "input#guess_latitude[name=?]", "guess[latitude]"

      assert_select "input#guess_longitude[name=?]", "guess[longitude]"

      assert_select "input#guess_name[name=?]", "guess[name]"

      assert_select "input#guess_face_id[name=?]", "guess[face_id]"

      assert_select "input#guess_user_id[name=?]", "guess[user_id]"
    end
  end
end
