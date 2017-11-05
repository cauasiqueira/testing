service "tomcat8" do
  supports [ :status, :restart ]
  action [ :enable, :start ]
end

cookbook_file '/var/lib/tomcat8/webapps/java-chef-test.war' do
  source 'java-chef-test.war'
  owner 'tomcat8'
  group 'tomcat8'
  mode '0755'
  notifies :restart, resources(:service => "tomcat8")
end
