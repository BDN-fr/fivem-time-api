# fivem-time-api
A script that allows you to have one hour on your correct time zone without having to change/do calculations to have the right time in your scripts.

# Usage :
```
exports['time-api']:GetTime() → return https://worldtimeapi.org/api/timezone/Europe/Paris (Because Config.TimeZone = 'Europe/Paris') as array

exports['time-api']:GetTime({TimeZone = 'Europe/London'}) → return https://worldtimeapi.org/api/timezone/Europe/London as array

-- Execute task 5:10, every day
function CronTask(d, h, m)
  print('Task done')
end

exports['time-api']:RunAt(5, 10, CronTask)

-- Execute task every monday at 18:30
function CronTask(d, h, m)
  if d == 1 then
    print('Task done')
  end
end

exports['time-api']:RunAt(18, 30, CronTask)
(Just esx cron)
```
