name "demo_load_balancer"
description "demo load balancer"
run_list(
         "recipe[haproxy::app_lb]"
)
override_attributes(
  "haproxy" => {
    "app_server_role" => "rails_demo"
  }
)
