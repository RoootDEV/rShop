ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RooT              = {}
RooT.DrawDistance = 300
RooT.Size         = {x = 1.0, y = 1.0, z = 1.0}
RooT.Color        = {r = 255, g = 255, b = 255}
RooT.Type         = 1

local position = {
    {x = 25.74, y = -1345.56, z = 29.49},
    {x = 373.875,   y = 325.896,  z = 102.66},
	{x = 2557.458,  y = 382.282,  z = 107.722}, 
	{x = -3038.939, y = 585.954,  z = 6.97},
	{x = -3241.927, y = 1001.462, z = 11.850}, 
	{x = 547.431,   y = 2671.710, z = 41.176}, 
	{x = 1961.464,  y = 3740.672, z = 31.363}, 
	{x = 2678.916,  y = 3280.671, z = 54.261}, 
    {x = 1729.216,  y = 6414.131, z = 34.057}, 
    {x = 1135.808,  y = -982.281,  z = 45.45}, 
	{x = -1222.93, y = -906.99,  z = 11.35}, 
	{x = -1487.553, y = -379.107,  z = 39.163}, 
	{x = -2968.243, y = 390.910,   z = 14.054}, 
	{x = 1166.024,  y = 2708.930,  z = 37.167}, 
	{x = 1392.562,  y = 3604.684,  z = 33.995}, 
	{x = -1393.409, y = -606.624,  z = 29.319}, 
    {x = -48.519,   y = -1757.514, z = 28.47}, 
	{x = 1163.373,  y = -323.801,  z = 68.27}, 
	{x = -707.67,  y = -914.22,  z = 18.26}, 
	{x = -1820.523, y = 792.518,   z = 137.20},
	{x = 1698.388,  y = 4924.404,  z = 41.083}
  }


  -- BLIPS 

  Citizen.CreateThread(function()

	for i=1, #Config.RooT, 1 do

		local blip = AddBlipForCoord(Config.RooT[i].x, Config.RooT[i].y, Config.RooT[i].z)

		SetBlipSprite (blip, 52)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.8)
		SetBlipColour (blip, 5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("LDT")
        EndTextCommandSetBlipName(blip)
	end

end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords, letSleep = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (RooT.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < RooT.DrawDistance) then
                DrawMarker(RooT.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, RooT.Size.x, RooT.Size.y, RooT.Size.z, RooT.Color.r, RooT.Color.g, RooT.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
            end
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)


RMenu.Add('rShop', 'main', RageUI.CreateMenu("", "Magasin"))
RMenu.Add('rShop', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('rShop', 'main'), "", "Nourriture"))
RMenu.Add('rShop', 'boissons', RageUI.CreateSubMenu(RMenu:Get('rShop', 'main'), "", "Boissons"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('rShop', 'main'), true, true, true, function()

            RageUI.Button("🍞 ~o~Nourriture~", nil, {RightLabel = "→→"},true, function ()
            end, RMenu:Get('rShop', 'nourriture'))

            RageUI.Button("☕ ~b~Boissons~", nil, {RightLabel = "→→"},true, function ()
            end, RMenu:Get('rShop', 'boissons'))

            RageUI.Button("⏳~r~ Fermer le menu", nil, {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    RageUI.CloseAll()
            end
            end)
           

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('rShop', 'nourriture'), true, true, true, function()

        RageUI.Button("🥖 Pain", nil, {RightLabel = "~g~1$"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            	local item = "bread"
            	local prix = 1
                TriggerServerEvent('rShop:acheter', item, prix)

            end
        end)

        RageUI.Button("🥪 Casse Croute ", nil, {RightLabel = "~g~3$"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            	local item = "sandwich"
            	local prix = 3
                TriggerServerEvent('rShop:acheterL', item, prix)

            end
        end)

        RageUI.Button("🍬 Sachet de Bonbon", nil, {RightLabel = "~g~2$"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            	local item = "canddy"
            	local prix = 2
                TriggerServerEvent('rShop:acheterM', item, prix)

            end
        end)

    end, function()
    end)

    RageUI.IsVisible(RMenu:Get('rShop', 'boissons'), true, true, true, function()

        RageUI.Button("💧 Bouteille d'eau", nil, {RightLabel = "~g~1$"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            	local item = "water"
            	local prix = 1
                TriggerServerEvent('rShop:acheterB', item, prix)

            end
        end)

        RageUI.Button("☕ Café", nil, {RightLabel = "~g~2$"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            	local item = "cofee"
            	local prix = 2
                TriggerServerEvent('rShop:acheterD', item, prix)
            end
        end)

                 RageUI.Button("🍵 Thé", nil, {RightLabel = "~g~2$"},true, function(Hovered, Active, Selected)
                    if (Selected) then   
                         local item = "the"
                         local prix = 2
                         TriggerServerEvent('rShop:acheterH', item, prix)

            end
        end)

    end, function()
    end)

      Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au Magasin")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('rShop', 'main'), not RageUI.Visible(RMenu:Get('rShop', 'main')))
                end   
            end
        end
    end
end)

--######## PARTIE PED #######--

Citizen.CreateThread(function()
    local hash = GetHashKey("a_m_m_soucent_03") --"a_f_y_beach_01" ped a modif: https://docs.fivem.net/docs/game-references/ped-models/
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "a_m_m_soucent_03", 393.16, -832.42, 28.30, true, true) --"a_f_y_beach_01" ped a modif: https://docs.fivem.net/docs/game-references/ped-models/
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)                      
end)

local v1 = vector3(393.16, -832.42, 30.20)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

local distance = 20

