require 'spec_helper'

describe "zombies/index" do
  before(:each) do
    assign(:zombies, [
      stub_model(Zombie,
        :name => "Name",
        :graveyard => "Graveyard"
      ),
      stub_model(Zombie,
        :name => "Name",
        :graveyard => "Graveyard"
      )
    ])
  end

  it "renders a list of zombies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Graveyard".to_s, :count => 2
  end
end
