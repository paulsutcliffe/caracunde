require 'spec_helper'

describe "integrantes/index" do
  before(:each) do
    assign(:integrantes, [
      stub_model(Integrante,
        :nome => "Nome",
        :descricao => "MyText",
        :pais => "Pais"
      ),
      stub_model(Integrante,
        :nome => "Nome",
        :descricao => "MyText",
        :pais => "Pais"
      )
    ])
  end

  it "renders a list of integrantes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
  end
end
