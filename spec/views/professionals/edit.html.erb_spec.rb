require 'rails_helper'

RSpec.describe "professionals/edit", :type => :view do
  before(:each) do
    @professional = assign(:professional, Professional.create!())
  end

  it "renders the edit professional form" do
    render

    assert_select "form[action=?][method=?]", professional_path(@professional), "post" do
    end
  end
end
