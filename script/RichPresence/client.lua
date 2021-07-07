Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(id de ton bot)--id

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('Grande Photo')--asset photo
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Nom de ton server ')-- Nom serv
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('petit logo')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('lien de ton discord')-- lien discord

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)
		players = {}
		for _, player in ipairs(GetActivePlayers()) do
			if NetworkIsPlayerActive( player ) then
				table.insert( players, player )
			end
		end
		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. " joueur(s) en ligne")
	end
end)