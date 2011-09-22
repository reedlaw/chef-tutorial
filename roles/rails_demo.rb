name "rails_demo"
description "chef tutorial example app"
run_list(
         "recipe[mongodb::10gen_repo]",
         "recipe[mongodb]",
         "recipe[application]",
         "recipe[rails_demo::nginx]",
         "recipe[nginx::source]"
)
