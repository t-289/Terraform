module "password_policy" {
  source = "../modules/iam/password_policy"
}

module "user" {
  source = "../modules/iam/user"
  user_name = ["user_1", "user_2", "user_3", ]
}

module "create_group" {
  source = "../modules/iam/group"
}

module "group_attach" {
  source = "../modules/iam/user_group_membership"
  for_each = toset(module.user.name)
  user_name = each.value
  groups_name = [ module.create_group.name ]
}