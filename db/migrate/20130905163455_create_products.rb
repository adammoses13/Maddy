class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
t.string :description, :product, :unitprice, :totalprice, :quantity
      t.timestamps
    end
  end
end
