class SubscriptionController < ApplicationController
# I don't think we use this controller at all
	def create
  		@subscription = Subscription.new(params[:subscription])
		  if @subscription.save_with_payment
		    redirect_to @subscription, :notice => "Thank you for subscribing!"
		  else
		    render :new
		  end
	end
end
