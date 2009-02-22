require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Link do
  fixtures :topics, :links

  before(:each) do
    @link = links(:foo_link)
  end

  it "should create a new instance given valid attributes" do
    @valid_attributes = {
      :slug        => "value for slug",
      :title       => "value for title",
      :description => "value for description",
      :url         => "value for url",
      :topic       => topics(:bar)
    }

    Link.create!(@valid_attributes)
  end

  %w(slug title description url).each do |method|
    it "should have a #{method} " do
      @link.send( method + '=', nil )
      @link.should_not be_valid
    end
  end

  %w(slug title).each do |method|
    it "should require #{method} to have at least three characters" do
      @link.send( method + '=', get_string(2) )
      @link.should_not be_valid
    end

    it "should require #{method} to have no more than 255 characters" do
      @link.send( method + '=', get_string(256) )
      @link.should_not be_valid
    end
  end

  it "should require slug to be unique for a given topic" do
    pending
  end

  it "should require url to have at least 12 characters" do
    @link.url = 'http://a.co';
    @link.should_not be_valid
  end

  it "should require url to have no more than 255 characters" do
    @link.url = 'http://' + get_string( 246 ) + '.us';
    @link.should_not be_valid
  end

  it "should require url's format to be valid" do
    pending
  end
end
