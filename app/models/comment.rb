class Comment < ActiveRecord::Base
  attr_accessible :name, :body, :audio, :audio_file_name, :user_id, :audio_file_size, :audio_updated_at
  has_attached_file :audio
  validates_attachment_content_type :audio, :content_type => ['audio/mp3', 'audio/mp4', 'application/mp3', 'audio/mpeg']

  belongs_to :user
end
