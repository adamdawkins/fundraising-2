require 'rails_helper'

RSpec.describe "campaigns/edit", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :description => "MyText",
      :donations_target => 1,
      :hidden => false,
      :name => "MyString",
      :slug => "MyString",
      :event => nil,
      :user => nil
    ))
  end

  it "renders the edit campaign form" do
    render

    assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do

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
