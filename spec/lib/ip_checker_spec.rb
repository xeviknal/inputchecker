require 'spec_helper'

class Test
  include ActiveModel::Validations

  validates :testfield, :ip => true

  attr_accessor :testfield
end

describe IpValidator do
  subject { Test.new }

  context "when input is an ip" do
    it "should allow value with XXX:XXX:XXX:XXX format" do
      subject.testfield = "122.122.122.122"
      subject.should be_valid
    end
  end
end
