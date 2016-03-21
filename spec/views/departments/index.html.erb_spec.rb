require 'rails_helper'

RSpec.describe "departments/index", type: :view do
  before(:each) do
    assign(:departments, [
      Department.create!(
        :dept_name => "Dept Name"
      ),
      Department.create!(
        :dept_name => "Dept Name"
      )
    ])
  end

  it "renders a list of departments" do
    render
    assert_select "tr>td", :text => "Dept Name".to_s, :count => 2
  end
end
