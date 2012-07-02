require 'spec_helper'

describe "tweets/edit" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :status => "MyString",
      :zombie => 1
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path(@tweet), :method => "post" do
      assert_select "input#tweet_status", :name => "tweet[status]"
      assert_select "input#tweet_zombie", :name => "tweet[zombie]"
    end
  end
end
