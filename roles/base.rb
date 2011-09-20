name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[users::sysadmins]",
  "recipe[sudo]",
  "recipe[apt]",
  "recipe[git]",
  "recipe[build-essential]"
)
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["reedlaw"],
      :passwordless => true
    }
  }
)
