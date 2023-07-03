require 'rails_helper'

RSpec.describe "service_provisions/new", type: :view do
  before(:each) do
    assign(:service_provision, ServiceProvision.new(
      name: "MyString",
      description: "MyString",
      status: "MyString",
      quota: 1.5,
      comment: "",
      service_provision: nil
    ))
  end

  it "renders new service_provision form" do
    render

    assert_select "form[action=?][method=?]", service_provisions_path, "post" do

      assert_select "input[name=?]", "service_provision[name]"

      assert_select "input[name=?]", "service_provision[description]"

      assert_select "input[name=?]", "service_provision[status]"

      assert_select "input[name=?]", "service_provision[quota]"

      assert_select "input[name=?]", "service_provision[comment]"

      assert_select "input[name=?]", "service_provision[service_provision_id]"
    end
  end
end
