require 'rails_helper'

RSpec.describe "Professionals", :type => :request do
  describe "GET /professionals" do
    it "works! (now write some real specs)" do
      get professionals_path
      expect(response.status).to be(200)
    end
  end
end
