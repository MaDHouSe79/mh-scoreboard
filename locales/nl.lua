local Translations = {

    label = {
        ["police"] = "Politie",
        ["ambulance"] = "Ambulance",
        ["mechanic"] = "Monteurs",
        ["taxi"] = "Taxi",
        ["mayor"] = "Burgermeester",
        ["cardealer"] = "Autodealer",
        ["realestate"] = "Makelaar",
        ["beanmachine"] = "Beanmachine",
        ["whitewidow"] = "Wietpaleis",
        ["drivingteacher"] = "Rijschool",
        ["server_info"] = "SERVER INFO",
        ["title_robbery"] = "OVERVAL",
        ["title_status"] = "STATUS",
        ["title_jobs"] = "BANEN",
        ["title_active"] = "ACTIEF",
        ["title_players"] = "SPELERS",
        ['yes'] = "ja",
        ['no'] = "nee",
        ['admin'] = "ADMIN",
        ['god'] = "GOD",
        ['notify_not_supported'] = " Uw type meldingskeuze wordt niet ondersteund.",
        ['open_scoreboard'] = "Open Scoreboard",
    },
    illegal_actions = {
        ["storerobbery"] = "WINKEL",
        ["atmrobbery"] = "ATM",
        ["houserobbery"] = "HUIS",
        ["banktruck"] = "TRUCK",
        ["jewellery"] = "VANGELICO",
        ["Fleeca"] = "FLEECA BANK",
        ["Paleto"] = "PALETO BANK",
        ["Pacific"] = "PACIFIC BANK",
    },
    admin = {
        ['enable_id'] = "Je Admin ID is weer ingeschakeld!",
        ['disable_id'] = "Je Admin ID is nu uitgeschakeld!",
        
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})