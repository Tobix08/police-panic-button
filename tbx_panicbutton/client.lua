ESX = exports["es_extended"]:getSharedObject()

local coppos = false

local coords = nill



RegisterCommand('panic', function()
    TriggerServerEvent('tbx_panicbutton:panic')
    TriggerServerEvent('tbx_panicbutton:copcoords')
    local cop = {}
    coords = GetEntityCoords(PlayerPedId())
    coppos = true
    return ESX.PlayerData.coords
end)

RegisterCommand('react', function()
    SetNewWaypoint(coords)
    lib.notify({
        title = Config.Translate.title,
        description = Config.Translate.setgpsmessage,
        type = 'success'
    })
end)


RegisterKeyMapping('panic', 'Police panic button', 'keyboard', 'G')
RegisterKeyMapping('react', 'Police react to panic', 'keyboard', 'U')