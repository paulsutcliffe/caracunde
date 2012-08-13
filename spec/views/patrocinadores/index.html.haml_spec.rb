require 'spec_helper'

describe "patrocinadores/index" do
  before(:each) do
    assign(:patrocinadores, [
      stub_model(Patrocinador,
        :link => "Link"
      ),
      stub_model(Patrocinador,
        :link => "Link"
      )
    ])
  end

  it "renders a list of patrocinadores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
