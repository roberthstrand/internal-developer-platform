# resource "azuread_group" "reader" {
#   display_name     = format("ag-%s-reader", var.display_name)
#   security_enabled = true
# }

# resource "azuread_group" "contributor" {
#   display_name     = format("ag-%s-contributor", var.display_name)
#   security_enabled = true
# }

# resource "azuread_group" "owner" {
#   display_name     = format("ag-%s-owner", var.display_name)
#   security_enabled = true
# }
