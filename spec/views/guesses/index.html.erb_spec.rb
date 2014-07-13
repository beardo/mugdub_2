require 'rails_helper'

RSpec.describe "guesses/index", :type => :view do
  before(:each) do
    assign(:guesses, [
      Guess.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :face => nil,
        :user => nil
      ),
      Guess.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :face => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of guesses" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
