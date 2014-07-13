require 'rails_helper'

RSpec.describe "faces/new", :type => :view do
  before(:each) do
    assign(:face, Face.new(
      :image => "MyString",
      :user => nil
    ))
  end

  it "renders new face form" do
    render

    assert_select "form[action=?][method=?]", faces_path, "post" do

      assert_select "input#face_image[name=?]", "face[image]"

      assert_select "input#face_user_id[name=?]", "face[user_id]"
    end
  end
end
