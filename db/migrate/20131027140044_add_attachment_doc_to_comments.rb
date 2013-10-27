class AddAttachmentDocToComments < ActiveRecord::Migration
  def self.up
    change_table :comments do |t|
      t.attachment :doc
    end
  end

  def self.down
    drop_attached_file :comments, :doc
  end
end
