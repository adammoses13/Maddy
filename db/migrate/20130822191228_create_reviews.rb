class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.text :review
    	t.string :name

      t.timestamps
    end
  end
end
