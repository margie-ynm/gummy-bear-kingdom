require 'rails_helper'

describe "delete a product process" do
  it "deletes a tale from the database" do
    test_product = Product.create({:name => "Yummy Chocolate", :country => "Canada", :cost => 2.00})
    visit product_path(test_product)
    click_on "Delete"
    expect(Product.all).to eq([])
  end
end
