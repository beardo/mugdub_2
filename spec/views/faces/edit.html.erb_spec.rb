require 'rails_helper'

RSpec.describe "faces/edit", :type => :view do
  before(:each) do
    @face = assign(:face, Face.create!(
      :image => "MyString",
      :user => nil
    ))
  end

  it "renders the edit face form" do
    render

    assert_select "form[action=?][method=?]", face_path(@face), "post" do

      assert_select "input#face_image[name=?]", "face[image]"

      assert_select "input#face_user_id[name=?]", "face[user_id]"
    end
  end
end
