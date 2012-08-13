require 'spec_helper'

describe "integrantes/edit" do
  before(:each) do
    @integrante = assign(:integrante, stub_model(Integrante,
      :nome => "MyString",
      :descricao => "MyText",
      :pais => "MyString"
    ))
  end

  it "renders the edit integrante form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => integrantes_path(@integrante), :method => "post" do
      assert_select "input#integrante_nome", :name => "integrante[nome]"
      assert_select "textarea#integrante_descricao", :name => "integrante[descricao]"
      assert_select "input#integrante_pais", :name => "integrante[pais]"
    end
  end
end
