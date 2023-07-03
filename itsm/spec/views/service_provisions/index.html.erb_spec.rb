require 'rails_helper'

RSpec.describe "service_provisions/index", type: :view do
  before(:each) do
    assign(:service_provisions, [
      ServiceProvision.create!(
        name: "Name",
        description: "Description",
        status: "Status",
        quota: 2.5,
        comment: "",
        service_provision: nil
      ),
      ServiceProvision.create!(
        name: "Name",
        description: "Description",
        status: "Status",
        quota: 2.5,
        comment: "",
        service_provision: nil
      )
    ])
  end

  it "renders a list of service_provisions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
