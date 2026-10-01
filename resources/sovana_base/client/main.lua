CreateThread(function()
    for _, cmd in ipairs({ 'id', 'spieler', 'discord', 'hilfe' }) do
        TriggerEvent('chat:addSuggestion', '/' .. cmd, '')
    end
end)
