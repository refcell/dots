local tui = require('tui')
local pcap = require('pcap')

local function format_packet_header(ts, len)
    return string.format('Timestamp: %s | Packet Length: %d', os.date('%Y-%m-%d %H:%M:%S', ts), len)
end

local function analyze_packet(userdata, pkthdr, packet)
    local formatted_header = format_packet_header(pkthdr.ts.tv_sec, pkthdr.len)
    userdata.buffer:add_string(formatted_header)
    userdata.buffer:add_string('\n----------------------------------------\n')
end

local function main()
    local screen = tui.screen_setup()
    local buffer = tui.buffer()

    local list_view = tui.create_list_view(buffer, 0, 0, screen:width(), screen:height() - 1)

    local status_bar = tui.create_status_bar(screen:width())
    status_bar:set_text("Capturing network traffic... Press 'q' to quit.")

    screen:add_view(list_view)
    screen:add_view(status_bar)

    local userdata = { buffer = buffer }
    local pcap_session = pcap.open_live('any', 65535, true, 0)
    pcap.loop(pcap_session, -1, analyze_packet, userdata)

    screen:draw()

    while true do
        local event = screen:get_event()
        if event and event.type == 'key' then
        if event.key_name == 'q' then
            break
        end
        end
    end

    screen:shutdown()
    pcap.close(pcap_session)
end

main()
