require 'spec_helper'

describe "Customers" do
  describe "GET /customers" do
    it "works! (now write some real specs)" do
      visit customers_path
      response.status.should be(200)
    end
  end
end
