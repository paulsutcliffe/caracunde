require 'spec_helper'

describe "fotos/show" do
  before(:each) do
    @foto = assign(:foto, stub_model(Foto,
      :album_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
