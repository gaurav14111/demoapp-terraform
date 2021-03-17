resource "azurerm_resource_group" "acidemobook" {
 name = "demoBook"
 location = "westus2"
}

resource "azurerm_container_group" "aci-myapp" {
    name = "aci-agent"
    location = "West Europe"
    resource_group_name = azurerm_resource_group.acidemobook.name
    os_type = "linux"
    container {
         name = "myappdemo"
         image = "docker.io/mikaelkrief/${var.dockerhub-username}:${var.imageversion}"
         cpu = "0.5" memory = "1.5"
         ports {
          port = 80
          protocol = "TCP"
         }
     }
}
