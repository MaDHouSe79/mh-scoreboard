# MH Scoreboard
- Edit of qb-scoreboard.


# Optional
- okokNotify
- Roda_Notifications:

## 📸 Screenshot 👊😁👍
## 📸 Screenshot 👊😁👍
![foto1](https://media.discordapp.net/attachments/1057778180024447116/1094419139604529215/SPOILER_Aantekening_2023-04-09_020733.png?width=559&height=676)
![foto2](https://media.discordapp.net/attachments/1057778180024447116/1094419139851976734/SPOILER_Aantekening_2023-04-09_022609.png?width=954&height=676)
![foto3](https://media.discordapp.net/attachments/1057778180024447116/1094595669781663787/SPOILER_Aantekening_2023-04-09_141018.png)
![foto4](https://media.discordapp.net/attachments/1057778180024447116/1094595670092021850/SPOILER_Aantekening_2023-04-09_141101.png)

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
