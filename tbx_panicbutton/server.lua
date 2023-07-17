ESX = exports["es_extended"]:getSharedObject()

local xPlayer = ESX.GetPlayerFromId(source)




RegisterNetEvent('tbx_panicbutton:panic')
AddEventHandler('tbx_panicbutton:panic', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' then
        local coords = xPlayer.getCoords(false)
        TriggerClientEvent('tbx_panicbutton:react',coords)
        TriggerClientEvent('ox_lib:notify', source,{
            title = Config.Translate.notifyTitle,
            description = Config.Translate.reactmessage,
            type = 'warning'
        })
        TriggerClientEvent('ox_lib:notify', source,{
            title = Config.Translate.notifyTitle,
            description = Config.Translate.notifyMessagePolice,
            type = 'warning'
        })
        xPlayer.getCoords(false)
     end
end)




































--[[ RegisterNetEvent('tbx_panicbutton:ifjob')
AddEventHandler('tbx_panicbutton:ifjob', function()
    local xPlayer = ESX.GetPlayerFromId(source)
   if xPlayer.job.name == 'police' then 
    print('police job = true')
end
end)


RegisterNetEvent('tbx_panicbutton:copcoords')
AddEventHandler('tbx_panicbutton:copcoords', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.getCoords(false)
end) ]]