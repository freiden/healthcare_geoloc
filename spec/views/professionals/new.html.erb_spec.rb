require 'rails_helper'

RSpec.describe "professionals/new", :type => :view do
  before(:each) do
    assign(:professional, Professional.new())
  end

  it "renders new professional form" do
    render

    assert_select "form[action=?][method=?]", professionals_path, "post" do
    end
  end
end
