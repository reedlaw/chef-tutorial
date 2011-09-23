cookbook_file "#{node["nginx"]["dir"]}/sites-available/rails_demo" do
  source "rails_demo"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[nginx]"
end

execute "graceful-restart" do
  command "kill -HUP $( cat /var/run/nginx.pid )"
  only_if do ::File.exists?("/var/run/nginx.pid"); end
end

nginx_site "rails_demo" do
  action :enable
end



