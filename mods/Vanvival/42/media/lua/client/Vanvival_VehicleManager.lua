--[[
 _____  _    _  _   _ ______  _____  _   _      _    _   ___   _____      _   _  _____ ______  _____ 
|_   _|| |  | || | | || ___ \|  ___|| \ | |    | |  | | / _ \ /  ___|    | | | ||  ___|| ___ \|  ___|
  | |  | |  | || | | || |_/ /| |__  |  \| |    | |  | |/ /_\ \\ `--.     | |_| || |__  | |_/ /| |__  
  | |  | |/\| || | | || ___ \|  __| | . ` |    | |/\| ||  _  | `--. \    |  _  ||  __| |    / |  __| 
  | |  \  /\  /| |_| || |_/ /| |___ | |\  |    \  /\  /| | | |/\__/ /    | | | || |___ | |\ \ | |___ 
  \_/   \/  \/  \___/ \____/ \____/ \_| \_/     \/  \/ \_| |_/\____/     \_| |_/\____/ \_| \_|\____/ 
                                                                                                     
         				 Thanks Monkey for being really influential with their code                                                                                              
--]]

--Requires
local vehicles_list = require "VehiclesList"


local Vanvival_VehicleManager = {}
Vanvival_VehicleManager.__index = Vanvival_VehicleManager

local validVehicles = {}
local validTrailers = {}

function Vanvival_VehicleManager.populateValidVehicles()


	for _, v in ipairs(vehicles_list.vehicles.vanilla) do
		table.insert(validVehicles, v)
	end

	for _, t in ipairs(vehicles_list.trailers.vanilla) do
		table.insert(validTrailers, t)
	end

	for mod_name, vehicle_table in pairs(vehicles_list.vehicles.mods) do
		if getActivatedMods():contains(mod_name) then
			for _, v in ipairs(vehicle_table) do
				table.insert(validVehicles, v)
			end
		end
	end

	for mod_name, trailer_table in pairs(vehicles_list.trailers.mods) do
		if getActivatedMods():contains(mod_name) then
			for _, t in ipairs(trailer_table) do
				table.insert(validTrailers, t)
			end
		end
	end
end

-- Function to clear Custom Traits vehicle inventory
local function ClearVehicleInventory(vehicle)
	local partCount = vehicle:getPartCount()

	for i = 0, partCount -1 do
		local part = vehicle:getPartByIndex(i)
		if part then
			local container = part:getItemContainer()
			if container then
				container:clear()
			end
		end
	end
end

--Get random vehicle

function Vanvival_VehicleManager.getRandVehicle()
    return validVehicles[ZombRand(#validVehicles) + 1]
end

function Vanvival_VehicleManager.getRandTrailer()
    return validTrailers[ZombRand(#validTrailers) + 1]
end

-- Spawn vehicle
function Vanvival_VehicleManager.spawnVehicle(player)
	if not player then return end
	local playersquare = player:getCurrentSquare()
	if not playersquare then return end


	local square = getCell():getGridSquare(playersquare:getX(), playersquare:getY() - 2, playersquare:getZ())
	local inv = player:getInventory();
	if not square then return end

	local vehicleType
	-- Check for RV Owner and available mods if none found, picks random vehicle from the list
	local RvOptions = {}
	if player:HasTrait("RVOwner") then
		if getActivatedMods():contains("\\FRUsedCarsBeta") then
			table.insert(RvOptions, "Base.fr_fl_bounder_86")
			table.insert(RvOptions, "Base.fr_fo_econoline_rv_86")
		end
		if getActivatedMods():contains("\\PzkVanillaPlusCarPack") then
			table.insert(RvOptions, "Base.pzkFranklinTruckRV")
		end
		if getActivatedMods():contains("\\73Winnebago") then
			table.insert(RvOptions, "Base.73Winnebago")
		end

		if #RvOptions > 0 then
			vehicleType = RvOptions[ZombRand(#RvOptions) + 1]
		else
			vehicleType = Vanvival_VehicleManager.getRandVehicle()

			local ticks = 100
			local function delayedSay()
				ticks = ticks - 1
				if ticks <= 0 then
					player:Say("To spawn with an RV you gotta enable one of the RV mods!")
					player:Say("Check Vanvival's Description!")
					return false
				end
			end
			Events.OnTick.Add(delayedSay)
		end
	else
		vehicleType = Vanvival_VehicleManager.getRandVehicle()
	end

	-- spawn
	local vehicle = addVehicleDebug(vehicleType, IsoDirections.E, nil, square)

	if vehicle then
		vehicle:repair()
		vehicle:setGeneralPartCondition(1,100);

		local gasvalue = vehicle:getPartById("GasTank"):getContainerCapacity() * (0.25 + (ZombRand(100)+1)/100);
        vehicle:getPartById("GasTank"):setContainerContentAmount(gasvalue);

		inv:AddItem(vehicle:createVehicleKey())

		if ZombRand(100) < 25 then
			local trailerType = Vanvival_VehicleManager.getRandTrailer()
			local trailerSquare = getCell():getGridSquare(playersquare:getX() - 5, playersquare:getY(), playersquare:getZ())
			local trailer = addVehicleDebug(trailerType, IsoDirections.E, nil, trailerSquare)

			if trailer then
				trailer:repair()
                trailer:setGeneralPartCondition(1, 100)
				inv:AddItem(trailer:createVehicleKey())
			end
		end

		if player:HasTrait("VanSurvivor") then
			ClearVehicleInventory(vehicle)
			local trunk = vehicle:getPartById("TruckBed") or vehicle:getPartById("Trunk")
			if trunk then
				local container = trunk:getItemContainer()
				container:AddItem("Base.HandAxe")
				container:AddItem("Base.TirePump")
				container:AddItem("Base.Wrench")
				container:AddItem("Base.LugWrench")
				container:AddItem("Base.Saw")
				container:AddItem("Base.Lighter")
				container:AddItem("Base.PetrolCan")
				container:AddItem("Base.CampingTentKit2")
				container:AddItem("Base.WaterBottle")
				container:AddItem("Base.CannedChili")
				container:AddItem("Base.CannedChili")
			end
		end
		Vanvival_ZombieDecimator:StartPurge();
	end

end

-- Hook for when player is created 

local function onPlayerCreated(playerIndex, player)
	if not player then return end
	local modData = player:getModData()
	if not modData.carSpawned then
		Vanvival_VehicleManager.populateValidVehicles()
		Vanvival_VehicleManager.spawnVehicle(player)
		modData.carSpawned = true
	end
end

Events.OnCreatePlayer.Add(onPlayerCreated)