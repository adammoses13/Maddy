class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end
    
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.deliver
      redirect_to Contact_Me_path(@pages), notice: "Thank you!  Your message has been sent, and Maddy will be in contact with you as soon as possible."
    else
      render :new
    end
  end
  
end