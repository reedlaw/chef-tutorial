cookbook_file "/etc/nginx/sites-enabled/rails_demo" do
  source "rails_demo"
  mode 0640
  owner "root"
  group "root"
  notifies :restart, resources(:service => "nginx")
end
