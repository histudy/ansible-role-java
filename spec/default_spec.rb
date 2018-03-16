require 'spec_helper'

pkg = 'openjdk-' + property['java_version'].to_s + '-'
pkg += property['java_install_jdk'] ? 'jdk' : 'jre'

describe package(pkg + '-headless') do
  it { should be_installed }
end
describe package(pkg) do
  if property['java_install_headless']
    it { should_not be_installed }
  else
    it { should be_installed }
  end
end
