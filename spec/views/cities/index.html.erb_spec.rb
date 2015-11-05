require 'rails_helper'

RSpec.describe "cities/index", type: :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :first_name => "First Name",
        :population => "Population",
        :elevation => "Elevation",
        :state => "State"
      ),
      City.create!(
        :first_name => "First Name",
        :population => "Population",
        :elevation => "Elevation",
        :state => "State"
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Population".to_s, :count => 2
    assert_select "tr>td", :text => "Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
