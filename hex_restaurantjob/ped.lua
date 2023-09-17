local ped = nil

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1000)
      if ped == nil then
        TriggerEvent('hex_rest:ped',Config.startLocation)
        ped = 1
      else
      end
    end
end)

RegisterNetEvent('hex_rest:ped')
AddEventHandler('hex_rest:ped',function(coords)
  local hash = GetHashKey('s_m_y_factory_01')
  if not HasModelLoaded(hash) then
    
    RequestModel(hash)
    Wait(10)
  end
  while not HasModelLoaded(hash) do
    Wait(10)
  end
  jobPed = CreatePed(5, hash, coords, false, false)
  FreezeEntityPosition(jobPed, true)
  SetEntityInvincible(jobPed, true)
  SetBlockingOfNonTemporaryEvents(jobPed, true)
  TaskStartScenarioInPlace(jobPed, "WORLD_HUMAN_CLIPBOARD", 0, false)
  SetModelAsNoLongerNeeded(hash)
end)

function OpenHurtownia()
    local elements = {
        {
            unselectable=true,
            icon="fas fa-info-circle",
            title="Co chcesz kupić?",
            
        },
        {
            icon = "fa-solid fa-dollar-sign",
            title = "Surowy stek",
            description="Kup surowego steka za 100$",
            name = "item1"
        },
        {
            icon = "fa-solid fa-dollar-sign",
            title = "Mięso z jelenia",
            description="Kup mięso z jelenia za 200$",
            name = "item2"
        },
        {
            icon = "fa-solid fa-dollar-sign",
            title = "Kiełbasa z dzika",
            description="Kup kiełbasę z dzika za 300$",
            name = "item3"
        },
        {
            icon = "fa-solid fa-circle-xmark",
            title = "Zamknij",
            name = "zamknij"
        },

    }
    
    ESX.OpenContext("right", elements, function(menu, element)
        if element.name == "item1" then
            TriggerServerEvent('hex_rest:item1')
        elseif element.name == "item2" then
            TriggerServerEvent('hex_rest:item2')
        elseif element.name == "item3" then
            TriggerServerEvent('hex_rest:item3')
        elseif element.name == "zamknij" then
            exports["esx_context"]:Close()
        end

    end)
end


exports.qtarget:AddBoxZone('ped', vector3(952.3525, -2101.9788, 30.7178-0.9), 0.8, 0.8, {
    name= 'ped',
    heading=250.9534,
    debugPoly=false,
    minZ=21.97834,
    maxZ=24.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Odbierz mięso",
                action = function()  OpenHurtownia() end
            },
        },
        job = {"boars"},
        distance = 1.5
})

RegisterNetEvent('hex_rest:brakhajsu')
AddEventHandler('hex_rest:brakhajsu', function()
    lib.notify({
        title = 'Brak pieniędzy',
        description = 'Nie masz wystarczająco gotówki',
        type = 'error'
    })
end)