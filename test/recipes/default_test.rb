# # encoding: utf-8

# Inspec test for recipe workstation::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
    skip 'This is an example test, replace with your own test.'
  end
end

describe port(80) do
  it { should_not be_listening }
  skip 'This is an example test, replace with your own test.'
end

describe package('tree') do
  it { should be_installed}
  skip 'This is the tree package test'
end

describe file('/etc/motd') do
  its('content') { should match(/Property of/) }	
  it { should be_owned_by 'root' }
end

describe file('/etc/motd') do
  it { should be_mode 0777 }
end
