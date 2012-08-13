require 'spec_helper'

describe "patrocinadores/show" do
  before(:each) do
    @patrocinador = assign(:patrocinador, stub_model(Patrocinador,
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
  end
end
