require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :crpyted_password => "MyString",
      :salt => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_crpyted_password[name=?]", "user[crpyted_password]"
      assert_select "input#user_salt[name=?]", "user[salt]"
    end
  end
end
