local QBCore = exports['qb-core']:GetCoreObject()
local disableID = {}

local function isAdmin(id)
    if IsPlayerAceAllowed(id, 'admin') or IsPlayerAceAllowed(id, 'god') or IsPlayerAceAllowed(id, 'command') then
        return true
    end
    return false
end

QBCore.Functions.CreateCallback('qb-scoreboard:server:isAdmin', function(source, cb)
    local src = source
    cb(isAdmin(src))
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:countCops', function(source, cb)
    local online = 0
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local target = QBCore.Functions.GetPlayer(v)
        if Config.newQBFramework then
            if target.PlayerData.job.name == 'police' and target.PlayerData.job.onduty then
                online = online + 1
            end
        else
            if target.PlayerData.type == 'leo' and target.PlayerData.job.onduty then
                online = online + 1
            end
        end
    end
    cb(online)
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetCurrentPlayers', function(source, cb)
    local TotalPlayers = 0
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        TotalPlayers = TotalPlayers + 1
    end
    cb(TotalPlayers)
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetActivity', function(source, cb)
    local jobs = {}
    for k, v in pairs(Config.Jobs) do
        if not jobs[k] then 
            if v.active then
                jobs[k] = {name = k, icon = v.icon, label = v.label, active = true, count = 0 }
            else
                jobs[k] = {name = k, icon = v.icon, label = v.label, active = false, count = 0 }
            end
        end
    end
    Wait(50)
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if Config.MechanicsJobs[v.PlayerData.job.name] and v.PlayerData.job.onduty then
            jobs['mechanic'].count = jobs['mechanic'].count + 1
        end
        if jobs[v.PlayerData.job.name] and v.PlayerData.job.onduty then
            jobs[v.PlayerData.job.name].count = jobs[v.PlayerData.job.name].count + 1
        end
    end
    cb(jobs)
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetServerConfig', function(source, cb)
    cb(Config.IllegalActions)
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetPlayersArrays', function(source, cb)
    local players = {}
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        players[v.PlayerData.source] = {}
        if IsPlayerAceAllowed(v.PlayerData.source, 'admin') then players[v.PlayerData.source].label = Lang:t('label.admin') end
        if IsPlayerAceAllowed(v.PlayerData.source, 'god') then players[v.PlayerData.source].label = Lang:t('label.god') end
        players[v.PlayerData.source].permission = QBCore.Functions.IsOptin(v.PlayerData.source)
    end
    cb(players)
end)

RegisterNetEvent('qb-scoreboard:server:SetActivityBusy', function(activity, bool)
    Config.IllegalActions[activity].busy = bool
    TriggerClientEvent('qb-scoreboard:client:SetActivityBusy', -1, activity, bool)
end)

RegisterNetEvent('qb-scoreboard:server:ToggleAdminIdOn', function()
    local src = source
    if isAdmin(src) then
        TriggerClientEvent('qb-scoreboard:client:ToggleAdminIds', -1, false, src)
        TriggerClientEvent('qb-scoreboard:client:notify', src, Lang:t('admin.enable_id'), "warn")
    end
end)

RegisterNetEvent('qb-scoreboard:server:ToggleAdminIdOff', function()
    local src = source
    if isAdmin(src) then
        TriggerClientEvent('qb-scoreboard:client:ToggleAdminIds', -1, true, src)
        TriggerClientEvent('qb-scoreboard:client:notify', src, Lang:t('admin.disable_id'), "info")
    end
end)
