fx_version "adamant"
game "gta5"

name "Hexus restaurant job"
description "Script for"
author ".Hexus"
version "1.0.0"
lua54 'yes'

client_scripts {
	"client.lua",
	"ped.lua",
}

server_scripts {
	"server.lua",
}

shared_script { 
	'@es_extended/imports.lua',
	'config.lua',
	'@ox_lib/init.lua'
}