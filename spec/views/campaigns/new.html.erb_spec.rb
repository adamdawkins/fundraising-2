require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    assign(:campaign, Campaign.new(
      :description => "MyText",
      :donations_target => 1,
      :hidden => false,
      :name => "MyString",
      :slug => "MyString",
      :event => nil,
      :user => nil
    ))
  end

  it "renders new campaign form" do
    render

    assert_select "form[action=?][method=?]", campaigns_path, "post" do

      assert_select "textarea[name=?]", "campaign[description]"

      assert_select "input[name=?]", "campaign[donations_target]"

      assert_select "input[name=?]", "campaign[hidden]"

      assert_select "input[name=?]", "campaign[name]"

      assert_select "input[name=?]", "campaign[slug]"

      assert_select "input[name=?]", "campaign[event_id]"

      assert_select "input[name=?]", "campaign[user_id]"
    end
  end
end
