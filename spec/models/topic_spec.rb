require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Topic do
  fixtures :topics

  before(:each) do
    @topic = topics(:foo)
  end

  it "should create a new instance given valid attributes" do
    @valid_attributes = {
      :slug => "value for slug",
      :name => "value for name",
      :description => "value for description"
    }

    Topic.create!(@valid_attributes)
  end

  %w(slug name description).each do |method|
    it "should have a #{method} " do
      @topic.send( method + '=', nil )
      @topic.should_not be_valid
    end
  end

  %w(slug name).each do |method|
    it "should require #{method} to have at least three characters" do
      @topic.send( method + '=', get_string(2) )
      @topic.should_not be_valid
    end

    it "should require #{method} to have no more than 255 characters" do
      @topic.send( method + '=', get_string(256) )
      @topic.should_not be_valid
    end
  end
end
