require 'rails_helper'

RSpec.describe "splitters/edit", type: :view do
  before(:each) do
    @splitter = assign(:splitter, Splitter.create!())
  end

  it "renders the edit splitter form" do
    render

    assert_select "form[action=?][method=?]", splitter_path(@splitter), "post" do
    end
  end
end
