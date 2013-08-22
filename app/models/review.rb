class Review < ActiveRecord::Base
   attr_accessible :name, :review

def send_review_notification
  UserMailer.review_notification(self).deliver
end



end
