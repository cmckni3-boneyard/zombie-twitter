require 'spec_helper'

describe "zombies/edit" do
  before(:each) do
    @zombie = assign(:zombie, stub_model(Zombie,
      :name => "MyString",
      :graveyard => "MyString"
    ))
  end

  it "renders the edit zombie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => zombies_path(@zombie), :method => "post" do
      assert_select "input#zombie_name", :name => "zombie[name]"
      assert_select "input#zombie_graveyard", :name => "zombie[graveyard]"
    end
  end
end
