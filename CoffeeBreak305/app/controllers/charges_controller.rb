class ChargesController < ApplicationController
  def new
  end

  def create
    #Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => 'user@stripe.com',
      :card => params[:stripeToken]
      )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :desciprion => 'CoffeeBreak order',
      :currency => 'usd'
      )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
