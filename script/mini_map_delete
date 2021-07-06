Citizen.CreateThread(function() -- Création de la boucle
    while true do
        Wait(5) -- Faire attendre l'action qui suit pour pas que la boucle ne crash

        if IsPedInAnyVehicle(PlayerPedId(), 1) then -- si le ped est dans un véhicule alors
            DisplayRadar(true) -- la minimap s'affiche
        else -- sinon
            DisplayRadar(false) -- elle disparait
        end
    end
end)