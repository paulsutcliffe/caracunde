require 'spec_helper'

describe "informacoes/new" do
  before(:each) do
    assign(:informacao, stub_model(Informacao,
      :seo_text => "MyText",
      :telefone => "MyString",
      :descricao => "MyText",
      :frases_chave => "MyString",
      :video => "MyString"
    ).as_new_record)
  end

  it "renders new informacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => informacoes_path, :method => "post" do
      assert_select "textarea#informacao_seo_text", :name => "informacao[seo_text]"
      assert_select "input#informacao_telefone", :name => "informacao[telefone]"
      assert_select "textarea#informacao_descricao", :name => "informacao[descricao]"
      assert_select "input#informacao_frases_chave", :name => "informacao[frases_chave]"
      assert_select "input#informacao_video", :name => "informacao[video]"
    end
  end
end
