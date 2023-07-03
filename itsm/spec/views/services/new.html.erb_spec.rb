require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      name: "MyString",
      description: "MyString",
      category: nil,
      reference_api: "MyString"
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[description]"

      assert_select "input[name=?]", "service[category_id]"

      assert_select "input[name=?]", "service[reference_api]"
    end
  end
end
