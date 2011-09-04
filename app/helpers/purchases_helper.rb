module PurchasesHelper
  def display_invoice(purchase)
    unless purchase.invoice.nil?
      render 'invoice', :purchase => @purchase
    else
      render 'no_invoice', :purchase => @purchase
    end
  end
end
