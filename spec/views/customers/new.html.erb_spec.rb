require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    rendered.should have_selector("form", :action => customers_path, :method => "post") do |form|
      form.should have_selector("input#customer_name", :name => "customer[name]")
      form.should have_selector("input#customer_active", :name => "customer[active]")
    end
  end
end
