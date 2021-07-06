Citizen.CreateThread(function()

    while true do

        Citizen.Wait(0)

        BlockWeaponWheelThisFrame()



        DisableControlAction(0, 37, true)

        DisableControlAction(0, 199, true) 

    end
end)