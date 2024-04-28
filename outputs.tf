

output "vm_info" {
  value = {
    for vm in nutanix_virtual_machine.bjh_test : vm.name => {
      memory = vm.memory_size_mib,
      vcpu = vm.num_vcpus_per_socket,
      vcpu_num = vm.num_sockets
    }
  }
}