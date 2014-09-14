require 'rails_helper'

RSpec.describe "professionals/show", :type => :view do
  before(:each) do
    @professional = assign(:professional, Professional.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
