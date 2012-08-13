require 'spec_helper'

describe "musicas/new" do
  before(:each) do
    assign(:musica, stub_model(Musica,
      :soundcloud => "MyText"
    ).as_new_record)
  end

  it "renders new musica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => musicas_path, :method => "post" do
      assert_select "textarea#musica_soundcloud", :name => "musica[soundcloud]"
    end
  end
end
