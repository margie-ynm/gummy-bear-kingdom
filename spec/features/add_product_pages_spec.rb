require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_on "Add a new product"
    fill_in 'Name', :with => "Reese's"
    fill_in 'Country', :with => "United States"
    fill_in 'Cost', :with => "2"
    click_on 'Create Product'
    expect(page).to have_content "Reese's"
  end
end
