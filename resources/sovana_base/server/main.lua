local function chat(src, msg)
    TriggerClientEvent('chat:addMessage', src, {
        color = { 255, 200, 0 },
        args = { Config.ServerName, msg },
    })
end

AddEventHandler('playerJoining', function()
    chat(source, Config.WelcomeMessage:format(Config.ServerName))
end)

RegisterCommand('id', function(src)
    if src == 0 then return print('Nur im Spiel nutzbar.') end
    chat(src, ('Deine ID: %d'):format(src))
end, false)

RegisterCommand('spieler', function(src)
    local msg = ('Spieler online: %d'):format(#GetPlayers())
    if src == 0 then return print(msg) end
    chat(src, msg)
end, false)

RegisterCommand('discord', function(src)
    if src == 0 then return print(Config.Discord) end
    chat(src, Config.Discord)
end, false)

RegisterCommand('hilfe', function(src)
    if src == 0 then return end
    for _, line in ipairs(Config.HelpLines) do chat(src, line) end
end, false)
