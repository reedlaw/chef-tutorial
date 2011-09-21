name "rails_demo"
description "chef tutorial example app"
run_list(
         "recipe[application]",
         "recipe[mongodb::10gen_repo]",
         "recipe[mongodb]",
         "recipe[nginx::source]"
)
