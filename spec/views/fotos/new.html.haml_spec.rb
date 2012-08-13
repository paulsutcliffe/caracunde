require 'spec_helper'

describe "fotos/new" do
  before(:each) do
    assign(:foto, stub_model(Foto,
      :album_id => 1
    ).as_new_record)
  end

  it "renders new foto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fotos_path, :method => "post" do
      assert_select "input#foto_album_id", :name => "foto[album_id]"
    end
  end
end
