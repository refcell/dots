local ndpi = require "ndpi"
local TICK_RESOLUTION = 1000  -- Samples per second
local detector = ndpi.detection_module(TICK_RESOLUTION)
detector:set_protocol_bitmask(ndpi.protocol_bitmask():set_all())

local flows = {}
for packet in iterate_packets() do
    -- Obtain a unique identifier for a flow, most likely using
    -- the source/destination IP addresses, ports, and VLAN tag.
    local flow_id = get_flow_id(packet)
    local flow = flows[flow_id]
    if not flow then
        -- Add any other flow-specific information needed by your application.
        flow = {
        ndpi_flow = ndpi.flow(),
        ndpi_src_id = ndpi.id(),
        ndpi_dst_id = ndpi.id(),
        protocol = ndpi.protocol.PROTOCOL_UNKNOWN,
        }
        flows[flow_id] = flow
    end

    if flow.protocol ~= ndpi.protocol.PROTOCOL_UNKNOWN then
        print("Identified protocol: " .. ndpi.protocol[flow.protocol])
    else
        flow.protocol = detector:process_packet(flow.ndpi_flow,
                                                get_ip_data_pointer(packet),
                                                get_ip_data_length(packet),
                                                os.time(),
                                                flow.ndpi_src_id,
                                                flow.ndpi_dst_id)
    end
end