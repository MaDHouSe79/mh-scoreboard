# MH Scoreboard
- Edit of qb-scoreboard.


# Optional
- okokNotify
- Roda_Notifications:


# Trigger disable id when in noclip, 
- put this in your client admin resources where you go in and out noclip.
```lua
-- display id
TriggerServerEvent('qb-scoreboard:server:ToggleAdminIdOn')

-- hide id
TriggerServerEvent('qb-scoreboard:server:ToggleAdminIdOff')
```

# To enable or disable a crime activity in the scoreboard.
- if it does not work make sure you use this trigger below in your scripts.
```lua
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'storerobbery', true)  -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'storerobbery', false) -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'atmrobbery', true)    -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'atmrobbery', false)   -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'houserobbery', true)  -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'houserobbery', false) -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'banktruck', true)     -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'banktruck', false)    -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'jewellery', true)     -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'jewellery', false)    -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Fleeca', true)        -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Fleeca', false)       -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Paleto', true)        -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Paleto', false)       -- disable
--
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Pacific', true)       -- enable
TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'Pacific', false)      -- disable
--
```