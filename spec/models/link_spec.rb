require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Link do
  before(:each) do
    @valid_attributes = {
      :slug => "value for slug",
      :title => "value for title",
      :description => "value for description",
      :url => "value for url"
    }
  end

  it "should create a new instance given valid attributes" do
    Link.create!(@valid_attributes)
  end
end
