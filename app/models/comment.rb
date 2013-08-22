class Comment < ActiveRecord::Base
  attr_accessible :name, :body, :audio, :audio_file_name, :user_id, :audio_file_size, :audio_updated_at
  has_attached_file :audio,
  					:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  					:url => "/system/:attachment/:id/:style/:filename"

  validates_attachment_content_type :audio, :content_type => ['audio/mp3', 'audio/mp4', 'application/mp3', 'audio/mpeg']

  belongs_to :user

  
  after_create :send_email
	  def send_email
	  	UserMailer.added_comment(self.user).deliver
	  end

end
