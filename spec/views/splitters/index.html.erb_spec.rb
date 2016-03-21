require 'rails_helper'

RSpec.describe "splitters/index", type: :view do
  before(:each) do
    assign(:splitters, [
      Splitter.create!(),
      Splitter.create!()
    ])
  end

  it "renders a list of splitters" do
    render
  end
end
