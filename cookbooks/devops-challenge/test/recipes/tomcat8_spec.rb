describe package('tomcat8') do
  it { should be_installed }
end

describe port(8080) do
  it { should be_listening }
end

describe service('tomcat8') do
  it { should be_enabled }
end

describe service('tomcat8') do
  it { should be_running }
end

describe file('/var/lib/tomcat8/webapps/java-chef-test.war') do
  it { should exist }
end

describe file('/var/lib/tomcat8/webapps/java-artifact-chef-test') do
  it { should be_directory }
end

describe command("pgrep java") do
  its(:exit_status) { should eq 0 }
end

describe command("curl -I localhost:8080/java-artifact-chef-test/chef/ping") do
  its(:exit_status) { should eq 0 }
end

describe command('curl http://localhost:8080/java-artifact-chef-test/chef/ping ; echo') do
  its(:stdout) { should include('Hello Chef deployed war') }
end
