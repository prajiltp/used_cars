class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      flash.now[:alert] = "Subscribed!"
      @subscription = Subscription.new
    else
      flash.now[:error] = "Failed"
    end
    render 'home/index'
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email, :category)
  end
end
