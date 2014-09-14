require 'rails_helper'

RSpec.describe "professionals/index", :type => :view do
  before(:each) do
    assign(:professionals, [
      Professional.create!(),
      Professional.create!()
    ])
  end

  it "renders a list of professionals" do
    render
  end
end
