# # encoding: utf-8

# Inspec test for recipe devops-challenge::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(22) do
  it { should be_listening }
end
