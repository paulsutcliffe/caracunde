require 'spec_helper'

describe "informacoes/index" do
  before(:each) do
    assign(:informacoes, [
      stub_model(Informacao,
        :seo_text => "MyText",
        :telefone => "Telefone",
        :descricao => "MyText",
        :frases_chave => "Frases Chave",
        :video => "Video"
      ),
      stub_model(Informacao,
        :seo_text => "MyText",
        :telefone => "Telefone",
        :descricao => "MyText",
        :frases_chave => "Frases Chave",
        :video => "Video"
      )
    ])
  end

  it "renders a list of informacoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Frases Chave".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
