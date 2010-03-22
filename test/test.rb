require File.join(File.dirname(__FILE__),"..","lib","spinner.rb")
require "fileutils"

describe "Spinner" do
    it "display a spinner" do
        lambda{
            Spinner::with_spinner(:count=>10, :message=>"Test spinner") do |spin|
                10.times do
                    sleep 0.1
                    spin.call
                end
            end
        }.should_not raise_error
    end
end
