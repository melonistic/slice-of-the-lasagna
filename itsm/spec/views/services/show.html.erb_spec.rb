require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    assign(:category, Category.create!(
      name: "Name",
      description: "Description",
    ))
   assign (:service, Service.create!(
      name: "Name",
      description: "Description",
      category: category,
      reference_api: "Reference Api"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Reference Api/)
  end
end
