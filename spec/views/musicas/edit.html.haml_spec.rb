require 'spec_helper'

describe "musicas/edit" do
  before(:each) do
    @musica = assign(:musica, stub_model(Musica,
      :soundcloud => "MyText"
    ))
  end

  it "renders the edit musica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => musicas_path(@musica), :method => "post" do
      assert_select "textarea#musica_soundcloud", :name => "musica[soundcloud]"
    end
  end
end
