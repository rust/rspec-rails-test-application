require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :password => "Password"
      ),
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Login".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Password".to_s, :count => 1)
  end
end
