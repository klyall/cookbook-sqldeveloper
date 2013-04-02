require 'minitest/spec'

describe_recipe 'sqldeveloper' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it "installs java" do
    file('/usr/bin/java').must_exist
  end

  it "installs sqldeveloper" do
    file('/usr/local/bin/sqldeveloper').must_exist
  end

end
