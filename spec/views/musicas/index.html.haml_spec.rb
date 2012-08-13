require 'spec_helper'

describe "musicas/index" do
  before(:each) do
    assign(:musicas, [
      stub_model(Musica,
        :soundcloud => "MyText"
      ),
      stub_model(Musica,
        :soundcloud => "MyText"
      )
    ])
  end

  it "renders a list of musicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
