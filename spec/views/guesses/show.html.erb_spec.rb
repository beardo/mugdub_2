require 'rails_helper'

RSpec.describe "guesses/show", :type => :view do
  before(:each) do
    @guess = assign(:guess, Guess.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "Name",
      :face => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
