require 'spec_helper'

describe Comment do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value for email",
      :website => "value for website",
      :body => "value for body",
      :moderated => false
    }
  end

  it "should create a new instance given valid attributes" do
    Comment.create!(@valid_attributes)
  end
end
