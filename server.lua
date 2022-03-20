ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('rShop:acheter')
AddEventHandler('rShop:acheter', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterA')
AddEventHandler('rShop:acheterA', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterB')
AddEventHandler('rShop:acheterB', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterC')
AddEventHandler('rShop:acheterC', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterD')
AddEventHandler('rShop:acheterD', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterE')
AddEventHandler('rShop:acheterE', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterF')
AddEventHandler('rShop:acheterF', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterG')
AddEventHandler('rShop:acheterG', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterH')
AddEventHandler('rShop:acheterH', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterI')
AddEventHandler('rShop:acheterI', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterJ')
AddEventHandler('rShop:acheterJ', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterK')
AddEventHandler('rShop:acheterK', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterL')
AddEventHandler('rShop:acheterL', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)

RegisterNetEvent('rShop:acheterM')
AddEventHandler('rShop:acheterM', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addInventoryItem(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)