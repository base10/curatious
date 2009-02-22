require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Topic do
  fixtures :topics

#   before(:each) do
#   end

  it "should create a new instance given valid attributes" do
    @valid_attributes = {
      :slug => "value for slug",
      :name => "value for name",
      :description => "value for description"
    }

    Topic.create!(@valid_attributes)
  end
end
