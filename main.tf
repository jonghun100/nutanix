#vm create
resource "nutanix_virtual_machine" "bjh_test" {

count = var.vm_count 

 name = "${var.vm_name}-${count.index + 1}"
 cluster_uuid = var.cluster_uuid   
  num_vcpus_per_socket = var.num_vcpus_per_socket 
  num_sockets = var.num_sockets 
  memory_size_mib = var.memory_size_mib  



  #nic connect
  nic_list {                      #가상머신에 연결할 nic를 설정. 
     subnet_uuid = var.subnet_uuid
   }

  #disk connect

   disk_list {
     
   
  data_source_reference = {  
   kind = "image"  #데이터소스유형을 나탄매
   uuid = var.image_uuid
    }
   }
   disk_list {
    disk_size_bytes = 100000000000  #100gb
    device_properties {
      device_type = "DISK"   #장치유형
      disk_address = {
        "adapter_type" = "SCSI"   
        "device_index" = "1"   #scsi어댑터에 연결된 두번째 디스크를 나타냄

        
      }
    }
    storage_config {
      storage_container_reference {
        kind = "storage_container"
        uuid = "7185f34b-5849-47a3-8e1f-04a5dcf2cdb3"
      }
    }
  }
}  
  
