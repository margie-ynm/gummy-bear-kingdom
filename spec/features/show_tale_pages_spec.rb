require 'rails_helper'

describe "the show a product process" do
  it "shows detailed page for a product" do
    test_product = Product.create({:name => "Yummy Chocolate", :country => "Canada", :cost => 2.00})
    visit products_path
    click_on "Yummy Chocolate"
    expect(page).to have_content "Canada"
  end
end
