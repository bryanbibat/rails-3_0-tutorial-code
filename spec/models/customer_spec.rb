require 'spec_helper'

describe Customer do
  it "should create a new instance given valid attributes" do
    Customer.create!(:name => 'John', :active => false)   # will throw error on failure
  end
end
