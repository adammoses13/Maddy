class AddCheckToReviews < ActiveRecord::Migration
  def change
  		add_column :reviews, :check, :string
  end
end
