blip = AddBlipForCoord(Config.Blip)
SetBlipSprite(blip , 141)
SetBlipScale(blip , 1.0)
SetBlipColour(blip, 40)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Boar's [FIRMA]")
EndTextCommandSetBlipName(blip)

exports.qtarget:AddBoxZone('bossmenu', vector3(142.5090, -1062.4273, 21.9602), 1.2, 1.2, {
    name= 'bossmenu',
    heading=250.9534,
    debugPoly=false,
    minZ=21.97834,
    maxZ=23.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Otwórz boss menu",
                action = function()  OpenBossActionsMenu() end
            },
        },
        job = {"boars"},
        distance = 1.5
})

exports.qtarget:AddBoxZone('stek', vector3(145.7061, -1055.6327, 21.8769), 0.8, 0.8, {
    name= 'stek',
    heading=250.9534,
    debugPoly=false,
    minZ=21.97834,
    maxZ=23.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Usmaz steka",
                action = function()  Smazsteka() end
            },
        },
        job = {"boars"},
        distance = 1.5
})

function OpenBossActionsMenu()
	TriggerEvent('esx_society:openBossMenu', 'boars', function(data, menu)
	end)
end

function Smazsteka()
    exports['progressbar']:Progress({
        name = "smazsteka",
        duration = 10000,
        label = "Smażenie steka",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "timetable@lamar@ig_2",
            anim = "grill_protien_like_clockwork_lamar",
        },
        prop = {
            model = "h4_prop_h4_coke_spatula_04",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('hex_rest:stekitemy')
        end
    end)
end