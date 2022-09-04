local QBCore = exports['qb-core']:GetCoreObject()

Loot = {
    {'recycable_material', math.random(1,3)},
    {'bandage', math.random(1,5)},
    {'rolex', math.random(1,2)},
    {'humanhead', 1},
    {'humantorso', 1},
    {'humanleg', 1},
    {'humanarm', 1},
    {'onion', 1},
    {'wholeham', 1},
    {'ketchup', 1},
    {'lockpick', 1},
    {'lime', 1},
    {'milk', 1},
    {'gin', 1},
    {'amaretto', 1},
    {'animal_lard', 1},
    {'microwave', 1},
    {'radio', 1},
    {'phone', 1},
    {'walkstick', 1},
}

RegisterServerEvent('qb-trashsearch:server:startDumpsterTimer')
AddEventHandler('qb-trashsearch:server:startDumpsterTimer', function(dumpster)
    startTimer(source, dumpster)
end)

RegisterNetEvent('qb-trashsearch:server:recieveItem', function()
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local chosenrandomItem = Loot[math.random(1, #Loot)]
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[chosenrandomItem[1]], "add")
    ply.Functions.AddItem(chosenrandomItem[1], chosenrandomItem[2])
end)

RegisterNetEvent('qb-trashsearch:server:givemoney', function(money)
local src = source
local ply = QBCore.Functions.GetPlayer(src)
ply.Functions.AddMoney("cash", money)
end)

function startTimer(id, object)
    local timer = 1 * 1000

    while timer > 0 do
        Wait(10)
        timer = timer - 10
        if timer == 0 then
            TriggerClientEvent('qb-trashsearch:server:removeDumpster', id, object)
        end
    end
end


