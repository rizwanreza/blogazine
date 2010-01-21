require 'spec_helper'

describe Post do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :body => "value for body",
      :summary => "value for summary",
      :slug => "value for slug"
    }
  end

  it "should create a new instance given valid attributes" do
    Post.create!(@valid_attributes)
  end
end
