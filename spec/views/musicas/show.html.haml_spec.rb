require 'spec_helper'

describe "musicas/show" do
  before(:each) do
    @musica = assign(:musica, stub_model(Musica,
      :soundcloud => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
