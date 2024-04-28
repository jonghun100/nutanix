terraform {
  required_providers {   #terraform이 해당 provider를 사용할 것임을 선언
    nutanix = {
      source = "nutanix/nutanix"
      version = "1.2.0"
    }
  }
}

provider "nutanix" {   #nutanix provider를 설정. nutanix클러스터에 연결하고 자원을 관리할 수 있다.
 username = var.username
 password = var.password
 endpoint = var.endpoint 
 port         = var.port
 insecure = true

}
