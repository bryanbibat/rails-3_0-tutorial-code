require 'spec_helper'

describe InvoicesHelper do
  describe "display_purchase" do
    it "should display description of the purchase of the invoice" do
      mock_purchase = stub_model(Purchase, :description => "a description")
      mock_invoice = stub_model(Invoice, :purchase => mock_purchase)
      helper.display_purchase(mock_invoice).should include "a description"
    end

    it "should display a default message if there is no purchase" do
      mock_invoice = stub_model(Invoice, :purchase => nil)
      helper.display_purchase(mock_invoice).should == "(no Purchase set)"
    end
  end
end
