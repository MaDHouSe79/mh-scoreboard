Config = {}
-----------------------------------------------------------------------------------------------------------------------------------
Config.MaxPlayers = 128 -- the max players you can have on your server.
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.Command = "scoreboard" -- to open the scoreboard or HOME
-----------------------------------------------------------------------------------------------------------------------------------
Config.Notify = "qb-core" -- Default:(qb-core), you can also use (roda-notify/okokNotify)
Config.NotifyTitle = "Scoreboard" -- us used for other notify system than qb-core (dont change it)
-----------------------------------------------------------------------------------------------------------------------------------
-- show or not show admin ids, 
-- set use the trigger to set this to false if you go in spectate mode, 
-- if you dont set this false players are able to see your id in the air
Config.ShowAdminIds = true
Config.ShowWhowIsAdminOrGod = false
-----------------------------------------------------------------------------------------------------------------------------------
Config.Lang = {
    ['logo'] = "assets/images/logo.png", -- put here your logo (make sure it's 100px/100px not above, you can use a url, but make sure its a `https://`)
    -- don't change anything below, edit the language file in locales folder.
    ['server_info'] = Lang:t('label.server_info'),
    ['title_robbery'] = Lang:t('label.title_robbery'),
    ['title_status'] = Lang:t('label.title_status'),
    ['title_jobs'] = Lang:t('label.title_jobs'),
    ['title_active'] = Lang:t('label.title_active'),
    ['title_players'] = "🎮 | "..Lang:t('label.title_players'),
    ['no'] = Lang:t('label.no'),
    ['yes'] = Lang:t('label.yes'),
}
-----------------------------------------------------------------------------------------------------------------------------------
-- put all your other mechanic jobs here.
-- NOTE Do not add the `mechanic` job here.
-- the jobs below will be count with the mechanic job.
Config.MechanicsJobs = {
    ['pitstop'],
    ['tuner'],
    ['abtcartrading'],
    ['scrapyard'],
}
-----------------------------------------------------------------------------------------------------------------------------------
-- all jobs you have in the city with translation and icone
-- if you dont have a job in this list then set `active` to `false`.
-- dont change the `names` cause this are not the `names` that is showing on the screen.
-- the `label` thats what is showed on the screen.
Config.Jobs = {
    ['police']         = {name = 'police',         label = Lang:t('label.police'),         count = 0, active = true, icon = "👮"},
    ['ambulance']      = {name = 'ambulance',      label = Lang:t('label.ambulance'),      count = 0, active = true, icon = "👨‍⚕️"},
    ['mechanic']       = {name = 'mechanic',       label = Lang:t('label.mechanic'),       count = 0, active = true, icon = "👨‍🔧"},
    ['taxi']           = {name = 'taxi',           label = Lang:t('label.taxi'),           count = 0, active = true, icon = "👲"},
    ['mayor']          = {name = 'mayor',          label = Lang:t('label.mayor'),          count = 0, active = true, icon = "🤴"},
    ['cardealer']      = {name = 'cardealer',      label = Lang:t('label.cardealer'),      count = 0, active = true, icon = "🤵"},
    ['realestate']     = {name = 'realestate',     label = Lang:t('label.realestate'),     count = 0, active = true, icon = "👨‍💼"},
    ['beanmachine']    = {name = 'beanmachine',    label = Lang:t('label.beanmachine'),    count = 0, active = true, icon = "🌰"},
    ['drivingteacher'] = {name = 'drivingteacher', label = Lang:t('label.drivingteacher'), count = 0, active = true, icon = "👨‍🏫"},
}
-----------------------------------------------------------------------------------------------------------------------------------
-- Minimum ops for illegal actions with translation and icone
-- you can change the `minimim` to your needs, you can also change the `icon`
-- if you dont have a job just jest `active` to `false`
Config.IllegalActions = {
    ["storerobbery"] = {label = Lang:t('illegal_actions.storerobbery'), minimum = 1, busy = false, active = true, icon = "🛒"},
    ["atmrobbery"]   = {label = Lang:t('illegal_actions.atmrobbery'),   minimum = 3, busy = false, active = false, icon = "🏧"},
    ["houserobbery"] = {label = Lang:t('illegal_actions.houserobbery'), minimum = 2, busy = false, active = true, icon = "🏠"},
    ["banktruck"]    = {label = Lang:t('illegal_actions.banktruck'),    minimum = 3, busy = false, active = true, icon = "🏦"},
    ["jewellery"]    = {label = Lang:t('illegal_actions.jewellery'),    minimum = 3, busy = false, active = true, icon = "💎"},
    ["Fleeca"]       = {label = Lang:t('illegal_actions.Fleeca'),       minimum = 4, busy = false, active = true, icon = "🏦"},
    ["Paleto"]       = {label = Lang:t('illegal_actions.Paleto'),       minimum = 5, busy = false, active = true, icon = "🏦"},
    ["Pacific"]      = {label = Lang:t('illegal_actions.Pacific'),      minimum = 6, busy = false, active = true, icon = "🏦"},
}
-----------------------------------------------------------------------------------------------------------------------------------
