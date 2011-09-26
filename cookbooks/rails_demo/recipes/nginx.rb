cookbook_file "#{node["nginx"]["dir"]}/sites-available/rails_demo" do
  source "rails_demo"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[nginx]"
end

nginx_site "rails_demo" do
  action :enable
end



