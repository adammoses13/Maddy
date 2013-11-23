class Review < ActiveRecord::Base
   attr_accessible :name, :review, :check

validate :check_is_blank

def check_is_blank
  errors.add :check if check.present?
end



def send_review_notification
  UserMailer.review_notification(self).deliver
end



end
