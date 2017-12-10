class Subscriptions::MembershipsController < ApplicationController
before_action :authenticate_user!
  before_action :set_subscription

  def create
   membership = @subscription.memberships.new(subscription_user_params)
  membership.subscription = @subscription

  if membership.save
    redirect_to @subscription, notice: 'Saved!'
  else
    redirect_to @subscription, alert: 'Failed saving!'
  end
  end

  private
    def set_subscription
      @subscription = Subscription.find(params[:subscription_id])
    end

    def subscription_user_params
      params.require(:membership).permit(:email)
    end
end