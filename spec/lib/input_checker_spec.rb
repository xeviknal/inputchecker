require 'spec_helper'

class Test
  include ActiveModel::Validations

  validates :testfield, :email => true

  attr_accessor :testfield
end

describe Inputchecker do
  subject { Test.new }

  context "when input is e-mail" do
    it "should not allow value without @" do
      subject.testfield = "itnig.net"
      subject.should be_invalid
    end

    it "should not allow value without ." do
      subject.testfield = "xavi@itnignet"
      subject.should be_invalid
    end

    it "should not allow value without both . and @" do
      subject.testfield = "xaviitnignet"
      subject.should be_invalid
    end

    it "should allow value with e-mail format" do
      subject.testfield = "xavi@itnig.net"
      subject.should be_valid
    end

    it "should allow value with + character in local part" do
      subject.testfield = "xavi+xtra@itnig.net"
      subject.should be_valid
    end
  end
end
