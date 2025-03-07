# GK_Core

----------------------------------------------------------------------------------------------
--								HTTPS://DISCORD.GK_SCRIPTS.WTF/								--	
----------------------------------------------------------------------------------------------

## 📌 Beschreibung

GK_Core ist eine erweiterbare Core-Bibliothek von GK_Scripts für FiveM mit Unterstützung
für verschiedene **Benachrichtigungen** und **Fortschrittsbalken** (ESX, OX oder GK).

## ⚙️ Installation


   ```
   ensure gk_core
   
   ```
   
### 🛠 Konfiguration (`config.lua`)
```
Config.NotifyType = "GK" 			-- GK | ESX | OX | CUSTOM
Config.UseProgressbar = "GK" 		-- GK | ESX | OX | CUSTOM
```   

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


## 📌 Hinweis:

Clientseitige Exports (GK_ClientNotify): Nur für den eigenen Spieler sichtbar.
Serverseitige Exports (GK_ServerNotify): Du musst die playerId (_source, source) angeben,
damit die Nachricht an einen bestimmten Spieler geht.


### **Notify Clientseitig verwenden**
```
exports.GK_Core:GK_ClientNotify('success', 'Titel', 'Dies ist eine clientseitige Nachricht!', 6000)

```

### **Notify Serverseitig verwenden**
```
 exports.GK_Core:GK_ServerNotify(playerId, 'error', 'Warnung', 'Dies ist eine serverseitige Nachricht!', 6000)
 exports.GK_Core:GK_ServerNotify(_source, 'success', 'Safezone', 'Du hast die Safezone betreten!', 6000)

```


----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------



### 🚀 Server- und Client-seitige Exports

### **Server-seitige Exports (`gk_core_server_exports.lua`)**
```
exports('GK_ServerNotify', function(source, type, title, message, duration)
    TriggerClientEvent('gk_core:notify', source, type, title, message, duration)
end)
```
### **Client-seitige Exports (`gk_core_client_exports.lua`)**
```
exports('GK_ClientNotify', function(type, title, message, duration)
    TriggerEvent('gk_core:notify', type, title, message, duration)
end)
```


----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------



### Clientseitig Progressbar
```
exports.GK_Core:GK_ClientStartProgress(5000, "Lädt...")
exports.GK_Core:GK_ClientStopProgress()
```

### Serverseitig Progressbar
```
exports.GK_Core:GK_ServerStartProgress(source, 5000, "Lädt...")
exports.GK_Core:GK_ServerStopProgress(source)
```

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
