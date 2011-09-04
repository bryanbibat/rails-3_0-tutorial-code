require 'spec_helper'

describe "customers/edit.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit customer form" do
    render

    rendered.should have_selector("form", :action => customer_path(@customer), :method => "post") do |form|
      form.should have_selector("input#customer_name", :name => "customer[name]")
      form.should have_selector("input#customer_active", :name => "customer[active]")
    end
  end
end
