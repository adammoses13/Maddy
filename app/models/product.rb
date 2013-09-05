class Product < ActiveRecord::Base
  attr_accessible :product, :unitprice, :description, :quantity, :totalprice


end