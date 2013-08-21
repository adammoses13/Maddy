class AddAttachmentAudioToComments < ActiveRecord::Migration
  def self.up
    change_table :comments do |t|
      t.attachment :audio
    end
  end

  def self.down
    drop_attached_file :comments, :audio
  end
end
