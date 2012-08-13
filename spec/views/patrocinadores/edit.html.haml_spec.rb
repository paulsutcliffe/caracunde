require 'spec_helper'

describe "patrocinadores/edit" do
  before(:each) do
    @patrocinador = assign(:patrocinador, stub_model(Patrocinador,
      :link => "MyString"
    ))
  end

  it "renders the edit patrocinador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patrocinadores_path(@patrocinador), :method => "post" do
      assert_select "input#patrocinador_link", :name => "patrocinador[link]"
    end
  end
end
