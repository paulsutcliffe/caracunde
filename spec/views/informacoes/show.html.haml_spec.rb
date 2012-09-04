require 'spec_helper'

describe "informacoes/show" do
  before(:each) do
    @informacao = assign(:informacao, stub_model(Informacao,
      :seo_text => "MyText",
      :telefone => "Telefone",
      :descricao => "MyText",
      :frases_chave => "Frases Chave",
      :video => "Video"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Telefone/)
    rendered.should match(/MyText/)
    rendered.should match(/Frases Chave/)
    rendered.should match(/Video/)
  end
end
