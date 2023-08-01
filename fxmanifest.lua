fx_version 'cerulean'
game 'gta5'

description 'MH-Scoreboard'
version '1.0'

ui_page 'html/ui.html'

shared_script {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
    'server/update.lua',
}

files {
    'html/ui.html',
    'html/assets/css/*.css',
    'html/assets/js/*.js',
    'html/assets/images/logo.png',
    'html/assets/images/icons/*.png',
}

lua54 'yes'
