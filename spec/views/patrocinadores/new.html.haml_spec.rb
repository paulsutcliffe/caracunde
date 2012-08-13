require 'spec_helper'

describe "patrocinadores/new" do
  before(:each) do
    assign(:patrocinador, stub_model(Patrocinador,
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new patrocinador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patrocinadores_path, :method => "post" do
      assert_select "input#patrocinador_link", :name => "patrocinador[link]"
    end
  end
end
