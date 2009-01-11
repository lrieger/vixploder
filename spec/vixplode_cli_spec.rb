require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'vixplode/cli'

describe Vixplode::CLI, "execute" do
  before(:each) do
    @stdout_io = StringIO.new
    Vixplode::CLI.execute(@stdout_io, [])
    @stdout_io.rewind
    @stdout = @stdout_io.read
  end
  
  it "should do something" do
    @stdout.should_not =~ /To update this executable/
  end
end
