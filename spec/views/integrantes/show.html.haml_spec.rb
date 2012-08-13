require 'spec_helper'

describe "integrantes/show" do
  before(:each) do
    @integrante = assign(:integrante, stub_model(Integrante,
      :nome => "Nome",
      :descricao => "MyText",
      :pais => "Pais"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/MyText/)
    rendered.should match(/Pais/)
  end
end
