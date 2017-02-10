require 'rails_helper'

describe "the edit product process" do
  it "edit the name of a product" do
    test_product = Product.create({:name => "Yummy Chocolate", :country => "Canada", :cost => 2.00})
    visit product_path(test_product)
    click_on "Edit"
    fill_in "Name", :with => "Awesome Chocolate"
    click_on "Update"
    expect(page).to have_content 'Awesome Chocolate'
  end
end
