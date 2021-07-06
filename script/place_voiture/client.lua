Citizen.CreateThread(function()
    while true do
        local plyPed = PlayerPedId()
        if IsPedSittingInAnyVehicle(plyPed) then
            local plyVehicle = GetVehiclePedIsIn(plyPed, false)
            CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 
            if CarSpeed <= 40.0 then 
                if IsControlJustReleased(0, 157) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, -1)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 158) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 0)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 160) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 1)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 164) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 2)
                    Citizen.Wait(10)
                end
            end
        end
        Citizen.Wait(10) -- Fix Crash Client
    end
end)