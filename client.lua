Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        SetDiscordAppId(PUT YOUR APP ID) 
        -- This is where you enter your Discord Application ID
        SetRichPresence(PlayerName.." ["..id.."]") 
        -- Here the player will see his ID and Name.
        SetDiscordRichPresenceAsset('large') 
        -- Enter the name of the picture you set here.
        SetDiscordRichPresenceAssetText('Discord') 
        -- Here you can add hover text for the "large" icon.
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
            0 : The button will be visible
            1 : The button will not be visible
        ]]--
        SetDiscordRichPresenceAction(0, "✅ Connect", "fivem://connect/") 
        -- Here you give the link to your connect.
        SetDiscordRichPresenceAction(1, "🌐 Discord", "https://discord.gg/rcGVrczfNg") 
        -- This is where you put the link to your discord server.
        -- Updates every 1 minute
        Citizen.Wait(60000)
    end
end)
