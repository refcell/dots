package = "pcap"
version = "1.0.0"
source = {
   url = "https://github.com/refcell/pcap"
}
description = {
   summary = "A wrapper around pcap bindings",
   detailed = [[
      pcap wraps lua pcap bindings, exposing an easily configurable
      interface for working with pcap.
   ]],
   homepage = "https://github.com/refcell/pcap",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    
  }
}
