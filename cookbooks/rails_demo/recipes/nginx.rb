cookbook_file "#{node["nginx"]["dir"]}/sites-available/rails_demo" do
  source "rails_demo"
  mode 0644
  owner "root"
  group "root"
  nginx_site "rails_demo"
  notifies :restart, "service[nginx]"
end

