class InvoicesController < ApplicationController
  def show
    # we'll integrate the Invoice details in the Show Purchase screen
    redirect_to purchase_path(params[:purchase_id])
  end

  def new
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.build_invoice
  end

  def edit
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.invoice
  end

  def create
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.build_invoice(params[:invoice])

    if @invoice.save
      redirect_to @purchase, :notice => 'Invoice was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.invoice

    if @invoice.update_attributes(params[:invoice])
      redirect_to @purchase, :notice => 'Invoice was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.invoice
    @invoice.destroy
    redirect_to @purchase
  end
end
