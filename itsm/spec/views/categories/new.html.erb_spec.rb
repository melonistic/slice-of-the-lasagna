require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      name: "MyString",
      description: "MyString",
      subsidized_amount: 1
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input[name=?]", "category[name]"

      assert_select "input[name=?]", "category[description]"

      assert_select "input[name=?]", "category[subsidized_amount]"
    end
  end
end
