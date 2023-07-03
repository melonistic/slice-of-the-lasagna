require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  let(:service) {
    Service.create!(
      name: "MyString",
      description: "MyString",
      category: nil,
      reference_api: "MyString"
    )
  }

  before(:each) do
    assign(:service, service)
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(service), "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[description]"

      assert_select "input[name=?]", "service[category_id]"

      assert_select "input[name=?]", "service[reference_api]"
    end
  end
end
