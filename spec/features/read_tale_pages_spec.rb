require 'rails_helper'

describe "the display index process" do
  it "shows products page" do
    test_product = Product.create({:name => "Yummy Chocolate", :country => "Canada", :cost => 2.00})
    visit products_path
    expect(page).to have_content "Yummy Chocolate"
  end
end
