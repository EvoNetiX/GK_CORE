
----------------------------------------------------------------------------------------------
--								HTTPS://DISCORD.GK_SCRIPTS.WTF/								--	
----------------------------------------------------------------------------------------------

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'EvoNetiX'
description 'GK_Core - Notify & Progress Core System'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
	'@ox_lib/init.lua',
    'gk_core_server.lua',
    'gk_core_server_exports.lua'
}

client_scripts {
	'@ox_lib/init.lua',
	'gk_core_client.lua',
    'gk_core_client_exports.lua'
}

exports {
    'GK_ClientNotify',
    'GK_ClientStartProgress',
    'GK_ClientStopProgress'
}

server_exports {
    'GK_ServerNotify',
    'GK_ServerStartProgress',
    'GK_ServerStopProgress'
}

escrow_ignore {
	'config.lua'
}

dependency '/assetpacks'