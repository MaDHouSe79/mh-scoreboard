local QBCore = exports['qb-core']:GetCoreObject()
local scoreboardOpen = false
local PlayerOptin = {}
local disableID = {}
local ShowAdminIds = Config.ShowAdminIds

local function Notify(message, type)
    if Config.Notify == "okokNotify" then
        exports['okokNotify']:Alert(Config.NotifyTitle, message, 5000, type)
    elseif Config.Notify == "qb-core" then
        if type == "info" then type = "primary" end
        QBCore.Functions.Notify({text = Config.NotifyTitle, caption = message}, type, 5000)
    elseif Config.Notify == "roda-notify" then
        exports['Roda_Notifications']:showNotify(Config.NotifyTitle, message, type, 5000)
    else
        print("[mh-scoreboard]:".. Lang:t('label.notify_not_supported'))
    end
end

local function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local function GetPlayers()
    local players = {}
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        if DoesEntityExist(ped) then
            players[#players + 1] = player
        end
    end
    return players
end

local function GetPlayersFromCoords(coords, distance)
    local players = GetPlayers()
    local closePlayers = {}
    if coords == nil then coords = GetEntityCoords(PlayerPedId()) end
    if distance == nil then distance = 5.0 end
    for _, player in pairs(players) do
		local target = GetPlayerPed(player)
		local targetCoords = GetEntityCoords(target)
		local targetdistance = #(targetCoords - vector3(coords.x, coords.y, coords.z))
		if targetdistance <= distance then closePlayers[#closePlayers+1] = player end
    end
    return closePlayers
end

RegisterKeyMapping(Config.Command, Lang:t('label.open_scoreboard'), 'keyboard', Config.OpenKey)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetServerConfig', function(config)
        Config.IllegalActions = config
    end)
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetServerConfig', function(config)
            Config.IllegalActions = config
        end)
    end
end)

RegisterNetEvent('qb-scoreboard:client:SetActivityBusy', function(activity, busy)
    Config.IllegalActions[activity].busy = busy
end)

RegisterNetEvent('qb-scoreboard:client:ToggleAdminIds', function(state, adminID)
    print(adminID, tostring(state))
    ShowAdminIds = state
    if not disableID[adminID] then 
        disableID[adminID] = state
    else
        disableID[adminID] = state 
    end
end)

RegisterNetEvent('qb-scoreboard:client:notify', function(message, type)
    Notify(message, type)
end)

RegisterCommand('scoreboard', function()
    if not scoreboardOpen then
        TriggerEvent('animations:client:EmoteCommandStart', {"think"})
        QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetPlayersArrays', function(playerList)
            QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetActivity', function(jobs)
                QBCore.Functions.TriggerCallback("qb-scoreboard:server:GetCurrentPlayers", function(Players)
                    QBCore.Functions.TriggerCallback("qb-scoreboard:server:countCops", function(cops)
                        PlayerOptin = playerList
                        SendNUIMessage({action = "open", players = Players, maxPlayers = Config.MaxPlayers, requiredCops = Config.IllegalActions, currentCops = cops, currentJobs = jobs, lang = Config.Lang})
                        scoreboardOpen = true
                    end)
                end)
            end)
        end)
    else
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        SendNUIMessage({action = "close"})
        scoreboardOpen = false
    end
end)

CreateThread(function()
    while true do
        if scoreboardOpen then
            for _, player in pairs(GetPlayersFromCoords(GetEntityCoords(PlayerPedId()), 10.0)) do
                local PlayerId = GetPlayerServerId(player)
                local PlayerPed = GetPlayerPed(player)
                local PlayerCoords = GetEntityCoords(PlayerPed)
                if not PlayerOptin[PlayerId].permission then
                    DrawText3D(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z + 1.0, '[ '..PlayerId..' ]')
                else
                    if not disableID[PlayerId] then
                        if Config.ShowWhowIsAdminOrGod then
                            local label = PlayerOptin[PlayerId].label
                            DrawText3D(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z + 1.0, '[ ~r~'..label..'~w~ ] [ '..PlayerId..' ]')
                        else
                            DrawText3D(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z + 1.0, '[ '..PlayerId..' ]')
                        end
                    end
                end
            end
        end
        Wait(5)
    end
end)