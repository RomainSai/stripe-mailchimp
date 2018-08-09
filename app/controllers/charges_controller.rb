class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Paiement',
      :currency    => 'eur'
    )

  rescue Stripe::CardError => e
    flash[:error] = 'problème de carte'
    redirect_to new_charge_path
  end

end
