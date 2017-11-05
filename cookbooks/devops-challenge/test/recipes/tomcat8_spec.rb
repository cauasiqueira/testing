describe package('tomcat8') do
  it { should be_installed }
end

describe port(8080) do
  it { should be_listening }
end

describe file('/var/lib/tomcat8/webapps/java-chef-test.war') do
  it { should exist }
end

describe file('/var/lib/tomcat8/webapps/java-artifact-chef-test') do
  it { should be_directory }
end
