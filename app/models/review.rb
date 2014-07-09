class Review < ActiveRecord::Base
   attr_accessible :name, :review, :content

#validates :content_is_blank

#def content_is_blank
#  errors.add :content if content.present?
#end



def send_review_notification
  UserMailer.review_notification(self).deliver
end



end
