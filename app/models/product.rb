class Product < ActiveRecord::Base
  validates :name, :country, :cost, :presence => true
end
