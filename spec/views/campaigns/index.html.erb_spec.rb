require 'rails_helper'

RSpec.describe "campaigns/index", type: :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
        :description => "MyText",
        :donations_target => 2,
        :hidden => false,
        :name => "Name",
        :slug => "Slug",
        :event => nil,
        :user => nil
      ),
      Campaign.create!(
        :description => "MyText",
        :donations_target => 2,
        :hidden => false,
        :name => "Name",
        :slug => "Slug",
        :event => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
