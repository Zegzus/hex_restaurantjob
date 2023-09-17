TriggerEvent('esx_service:activateService', 'boars', -1)

TriggerEvent('esx_society:registerSociety', 'boars', "Boar's", 'society_boars', 'society_boars', 'society_boars', {
    type = 'public'
})

RegisterServerEvent('hex_rest:item1')
AddEventHandler('hex_rest:item1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local hajs = xPlayer.getInventoryItem("money").count
    if hajs >= 100 then
        xPlayer.removeInventoryItem('money', 100)
        xPlayer.addInventoryItem('boars_rawsteak', 1)
    else
        TriggerClientEvent('ox_lib:notify', source,  {
            title = 'Brak pieniędzy',
            description = 'Nie masz wystarczająco gotówki',
            type = 'error'
        })
    end
end)

RegisterServerEvent('hex_rest:item2')
AddEventHandler('hex_rest:item2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local hajs = xPlayer.getInventoryItem("money").count
    if hajs >= 200 then
        xPlayer.removeInventoryItem('money', 200)
        xPlayer.addInventoryItem('boars_pieczen', 1)
    else
        TriggerClientEvent('ox_lib:notify', source,  {
            title = 'Brak pieniędzy',
            description = 'Nie masz wystarczająco gotówki',
            type = 'error'
        })
    end
end)

RegisterServerEvent('hex_rest:item3')
AddEventHandler('hex_rest:item3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local hajs = xPlayer.getInventoryItem("money").count
    if hajs >= 300 then
        xPlayer.removeInventoryItem('money', 300)
        xPlayer.addInventoryItem('boars_kielbasa', 1)
    else
        TriggerClientEvent('ox_lib:notify', source,  {
            title = 'Brak pieniędzy',
            description = 'Nie masz wystarczająco gotówki',
            type = 'error'
        })
    end
end)

RegisterServerEvent('hex_rest:stekitemy')
AddEventHandler('hex_rest:stekitemy', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local stek = xPlayer.getInventoryItem("boars_rawsteak").count
    if stek >= 1 then
        xPlayer.removeInventoryItem('boars_rawsteak', 1)
        xPlayer.addInventoryItem('boars_steak', 1)
    else
        TriggerClientEvent('ox_lib:notify', source,  {
            title = 'Nie masz mięsa',
            description = 'Nie masz wystarczająco mięsa',
            type = 'error'
        })
    end
end)