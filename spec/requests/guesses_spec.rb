require 'rails_helper'

RSpec.describe "Guesses", :type => :request do
  describe "GET /guesses" do
    it "works! (now write some real specs)" do
      get guesses_path
      expect(response.status).to be(200)
    end
  end
end