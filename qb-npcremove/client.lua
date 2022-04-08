-- Clear Peds
Citizen.CreateThread(function() -- PDM
    while true do
        ClearAreaOfPeds(-42.88, -1098.92, 26.42, 50.0, 1)
        Wait(1000)
    end
end)

-- Clear Vehicles
Citizen.CreateThread(function() -- PDM
    while true do
        RemoveVehiclesFromGeneratorsInArea(-42.88, -1098.92, 26.42, 30.0, 1)
        Wait(1000)
    end
end)

Citizen.CreateThread(function() -- PDM
    while true do
        Citizen.Wait(1000)
            local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
            ClearAreaOfVehicles(-42.88, -1098.92, 26.42, 30.0, false, false, false, false, false)
    end
end)