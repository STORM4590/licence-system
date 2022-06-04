local Successss = "DEINE WEBHOOK"
local FAILEEDD = "DEINE WEBHOOK"

local resourceName = GetCurrentResourceName()
PerformHttpRequest('http://matrix-auth.de/myip.php', function(err, result, headers)
    local reason = result
    ip = reason
end, 'GET', "")

PerformHttpRequest('http://matrix-auth.de/check.php', function(err, result, headers)
    local reason = result
    if reason == '+' then
        print("███╗   ███╗ █████╗ ████████╗██████╗ ██╗██╗  ██╗     ██╗     ██╗ ██████╗███████╗███╗   ██╗███████╗███████╗███████╗")
        print("████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗██║╚██╗██╔╝     ██║     ██║██╔════╝██╔════╝████╗  ██║██╔════╝██╔════╝██╔════╝")
        print("██╔████╔██║███████║   ██║   ██████╔╝██║ ╚███╔╝█████╗██║     ██║██║     █████╗  ██╔██╗ ██║███████╗█████╗  ███████╗")
        print("██║╚██╔╝██║██╔══██║   ██║   ██╔══██╗██║ ██╔██╗╚════╝██║     ██║██║     ██╔══╝  ██║╚██╗██║╚════██║██╔══╝  ╚════██║")
        print("██║ ╚═╝ ██║██║  ██║   ██║   ██║  ██║██║██╔╝ ██╗     ███████╗██║╚██████╗███████╗██║ ╚████║███████║███████╗███████║")
        print("╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝     ╚══════╝╚═╝ ╚═════╝╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝")
        print("Script works Thanks For Purchase!")
        TriggerEvent("succesfulscript1")
    else
        print("███╗   ███╗ █████╗ ████████╗██████╗ ██╗██╗  ██╗     ██╗     ██╗ ██████╗███████╗███╗   ██╗███████╗███████╗███████╗")
        print("████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗██║╚██╗██╔╝     ██║     ██║██╔════╝██╔════╝████╗  ██║██╔════╝██╔════╝██╔════╝")
        print("██╔████╔██║███████║   ██║   ██████╔╝██║ ╚███╔╝█████╗██║     ██║██║     █████╗  ██╔██╗ ██║███████╗█████╗  ███████╗")
        print("██║╚██╔╝██║██╔══██║   ██║   ██╔══██╗██║ ██╔██╗╚════╝██║     ██║██║     ██╔══╝  ██║╚██╗██║╚════██║██╔══╝  ╚════██║")
        print("██║ ╚═╝ ██║██║  ██║   ██║   ██║  ██║██║██╔╝ ██╗     ███████╗██║╚██████╗███████╗██║ ╚████║███████║███████╗███████║")
        print("╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝     ╚══════╝╚═╝ ╚═════╝╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝")
        print("You Didnt Bought The Script https://discord.gg/g9FKuNqvEu")
        TriggerEvent("uffdaswarnichtgeplant1")
        os.exit()
    end
end)

RegisterServerEvent('uffdaswarnichtgeplant1')
AddEventHandler('uffdaswarnichtgeplant1', function()
    sendToDiscord("Authentication Failed", "IP LOCK", "🛒Product: ".. resourceName .." \n 👮‍♂️Server IP: " .. ip .. " \n **Server Name**: \n" .. GetConvar('sv_hostname') .. " \n \n Server Offline \n \n Didnt Bought That Script! ☀")
end)

RegisterServerEvent('succesfulscript1')
AddEventHandler('succesfulscript1', function()
    sendToDiscord2("Authentication Succes", "IP LOCK", "🛒Product: ".. resourceName .." \n 👮‍♂️Server IP: " .. ip .. "\n **Server Name**: \n" .. GetConvar('sv_hostname') .. " \n \n Is a Customer! ☀")
end)

AddEventHandler('onResourceStart', function (resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
end)

function sendToDiscord (canal, name, message, color, title)
    local DiscordWebHook = canal
    local embeds = {
        {
            ["title"]= "Authentication Check",
            ["type"]= "rich",
            ["color"] = "16711710",
            ["description"]= "**".. message .."**",
            ["footer"]= {
            ["text"]= "Version 1.0 By Matrix-Development",
            ["icon_url"]= "https://cdn.discordapp.com/attachments/924621023373053963/952623811822514207/Komp_1.gif",
           },
        }
    }
    
      if message == nil or message == '' then return FALSE end
      PerformHttpRequest(FAILEEDD, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
    end

    function sendToDiscord2 (canal, name, message, color, title)
        local DiscordWebHook = canal
        local embeds = {
            {
                ["title"]= "Authentication Check",
                ["type"]= "rich",
                ["color"] = "16711710",
                ["description"]= "**".. message .."**",
                ["footer"]= {
                ["text"]= "Version 1.0 By Matrix-Development",
                ["icon_url"]= "https://cdn.discordapp.com/attachments/924621023373053963/952623811822514207/Komp_1.gif",
               },
            }
        }
        
          if message == nil or message == '' then return FALSE end
          PerformHttpRequest(Successss, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
        end