Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
        while true do
            Citizen.Wait(0)
        if GetDistanceBetweenCoords( -708.94, 642.13, 155.17, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( -708.94, 642.13, 155.17  -1.400, "~g~Your Text", 4, 0.1, 0.1)
        end
    end
end

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local scale = (1/dist)20
    local fov = (1/GetGameplayCamFov())100
    local scale = scalefov
    SetTextScale(scaleXscale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255)        -- You can change the text color here
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
   end