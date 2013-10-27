class AddDocNameToComments < ActiveRecord::Migration
	def change
  	add_column :comments, :docname, :string
  end
end
