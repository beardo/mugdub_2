require 'rails_helper'

RSpec.describe "faces/index", :type => :view do
  before(:each) do
    assign(:faces, [
      Face.create!(
        :image => "Image",
        :user => nil
      ),
      Face.create!(
        :image => "Image",
        :user => nil
      )
    ])
  end

  it "renders a list of faces" do
    render
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
