output "virtual_machine_default_ips" {
  description = "The default IP address of each virtual machine deployed, indexed by name."

  value = "${zipmap(
    flatten(list(
      vsphere_virtual_machine.*.name,
    )),
    flatten(list(
      vsphere_virtual_machine.*.default_ip_address,
    )),
  )}"
}
