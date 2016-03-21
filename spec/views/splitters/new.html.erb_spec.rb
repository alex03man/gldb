require 'rails_helper'

RSpec.describe "splitters/new", type: :view do
  before(:each) do
    assign(:splitter, Splitter.new())
  end

  it "renders new splitter form" do
    render

    assert_select "form[action=?][method=?]", splitters_path, "post" do
    end
  end
end
