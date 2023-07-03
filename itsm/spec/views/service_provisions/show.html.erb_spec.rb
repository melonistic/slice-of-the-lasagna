require 'rails_helper'

RSpec.describe "service_provisions/show", type: :view do
  before(:each) do
    assign(:service_provision, ServiceProvision.create!(
      name: "Name",
      description: "Description",
      status: "Status",
      quota: 2.5,
      comment: "",
      service_provision: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
