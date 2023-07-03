require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        name: "Name",
        description: "Description",
        category: nil,
        reference_api: "Reference Api"
      ),
      Service.create!(
        name: "Name",
        description: "Description",
        category: nil,
        reference_api: "Reference Api"
      )
    ])
  end

  it "renders a list of services" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Reference Api".to_s), count: 2
  end
end
