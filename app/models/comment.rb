class Comment < ActiveRecord::Base
  attr_accessible :doc, :docname, :name, :body, :audio, :audio_file_name, :user_id, :audio_file_size, :audio_updated_at
  has_attached_file :audio,
  					:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  					:url => "/system/:attachment/:id/:style/:filename"
  has_attached_file :doc
            
  validates_attachment_content_type :audio, :content_type => ['audio/mp3', 'audio/mp4', 'application/mp3', 'audio/mpeg']
  validates_attachment_content_type :doc, :content_type => ['application/msword', 'application/pdf', "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"] 
  

  belongs_to :user

  
  after_create :send_email
	  def send_email
	  	UserMailer.added_comment(self.user).deliver
	  end

end
