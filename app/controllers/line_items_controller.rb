class LineItemsController < ApplicationController
  def index
    # integrate with show purchase
    redirect_to Purchase.find(params[:purchase_id])
  end

  def show
    # integrate with show purchase
    redirect_to Purchase.find(params[:purchase_id])
  end

  def new
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.build
  end

  def edit
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])
  end

  def create
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.build(params[:line_item])

    if @line_item.save
      redirect_to @purchase, :notice => 'Line Item was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])

    if @line_item.update_attributes(params[:line_item])
      redirect_to @purchase, :notice => 'Line Item was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])
    @line_item.destroy
    redirect_to @purchase, :notice => 'Line Item was successfully deleted.'
  end
end
