TimeDiff = 0

function GetTime()
    return os.time() + TimeDiff
end
exports('GetTime',GetTime)

function Init()
    PerformHttpRequest(('http://worldtimeapi.org/api/timezone/%s'):format(Config.TimeZone),function (status, data, headers, errorData)
        if not data then
            print('API ERROR : '..status)
            Citizen.CreateThread(function()
                Wait(5 * 60000) -- Wait 5 minutes
                Init() -- Retry
            end)
            return
        end
        TimeDiff = os.time() - json.decode(data).unixtime
    end)
end
