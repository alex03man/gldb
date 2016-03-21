require 'rails_helper'

RSpec.describe "splitters/show", type: :view do
  before(:each) do
    @splitter = assign(:splitter, Splitter.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
