require 'spec_helper'

describe "memos/show" do
  before(:each) do
    @memo = assign(:memo, stub_model(Memo,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
