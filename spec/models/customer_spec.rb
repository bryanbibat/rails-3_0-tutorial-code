require 'spec_helper'

describe Customer do
  it "should create a new instance given valid attributes" do
    Customer.create!(:name => 'John', :active => false)   # will throw error on failure
  end

  it "should set the record as active on create" do
    customer = Customer.create(:name => "name", :active => false)
    customer.reload
    customer.active.should eq true
  end

  describe "when destroyed" do
    pending "should not delete the record from the database"
    pending "should set the customer as inactive"
  end

end
