<p align="center">
    <img width="140" src="https://icons.iconarchive.com/icons/iconarchive/red-orb-alphabet/128/Letter-M-icon.png" />  
    <h1 align="center">Hi 👋, I'm MaDHouSe</h1>
    <h3 align="center">A passionate allround developer </h3>    
</p>

<p align="center">
  <a href="https://github.com/MaDHouSe79/mh-scoreboard/issues">
    <img src="https://img.shields.io/github/issues/MaDHouSe79/mh-scoreboard"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-scoreboard/watchers">
    <img src="https://img.shields.io/github/watchers/MaDHouSe79/mh-scoreboard"/> 
  </a> 
  <a href="https://github.com/MaDHouSe79/mh-sitanyseat/network/members">
    <img src="https://img.shields.io/github/forks/MaDHouSe79/mh-scoreboard"/> 
  </a>  
  <a href="https://github.com/MaDHouSe79/mh-sitanyseat/stargazers">
    <img src="https://img.shields.io/github/stars/MaDHouSe79/mh-scoreboard?color=white"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-scoreboard/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/MaDHouSe79/mh-sitanyseat?color=black"/> 
  </a>      
</p>

<p align="center">
  <img alig src="https://github-profile-trophy.vercel.app/?username=MaDHouSe79&margin-w=15&column=6" />
</p>


# MH Scoreboard
- Rebuild of qb-scoreboard.
- admins are able to disable the id avobe the there head. 
- if you want, you can have the text GOD or ADMIN with your ID, you are also able to disable this option in the config.lua.
- if you have a new qbcore with type in the shared jobs you need to edit the config.lua.

# Optional
- okokNotify
- Roda_Notifications:

# Screenshot
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

## 🙈 Youtube
- [Youtube](https://www.youtube.com/@MaDHouSe79) for videos


# LICENSE
[GPL LICENSE](./LICENSE)<br />
&copy; [MaDHouSe79](https://www.youtube.com/@MaDHouSe79)
