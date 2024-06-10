function GetTime(args)
    local time
    PerformHttpRequest(('http://worldtimeapi.org/api/timezone/%s'):format(args.TimeZone or Config.TimeZone),function (status, data, headers, errorData)
        if not data then print('API ERROR : '..status) return end
        time = json.decode(data)
    end)
    return time
end
exports('GetTime',GetTime)