
----------------------------------------------------------------------------------------------
--								HTTPS://DISCORD.GK_SCRIPTS.WTF/								--	
----------------------------------------------------------------------------------------------

Config = {}

Config.Debug = false

Config.NotifyType = "GK"																					-- GK | ESX | OX | CUSTOM

Config.UseProgressbar = "GK"																				-- GK | ESX | OX | CUSTON



----------------------------------------------------------------------------------------------
--										CUSTOM NOTIFY										--	
----------------------------------------------------------------------------------------------


Config.CustomNotify = function(type, title, message, duration)							
    if Config.Debug then print("Custom Notify:", type, title, message, duration) end						-- EIGENE NOTIFY FUNKTION
end

Config.CustomProgressStart = function(time, text)
    if Config.Debug then print("Custom Progress Start:", time, text) end									-- EIGENE START PROCESSBAR FUNKTION
end

Config.CustomProgressStop = function()
    if Config.Debug then print("Custom Progress Stop") end													-- EIGENE STOP PROCESSBAR FUNKTION
end
