local spawnPos = vector3(686.245, 577.950, 130.461)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_m_skater_01' -- List of Ped FiveM https://docs.fivem.net/docs/game-references/ped-models/
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to Polo Leaks!~' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)
