require 'rails_helper'

RSpec.describe "cities/show", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :first_name => "First Name",
      :population => "Population",
      :elevation => "Elevation",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Population/)
    expect(rendered).to match(/Elevation/)
    expect(rendered).to match(/State/)
  end
end
