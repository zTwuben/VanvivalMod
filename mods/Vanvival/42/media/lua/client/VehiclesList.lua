--[[
 _____  _    _  _   _ ______  _____  _   _      _    _   ___   _____      _   _  _____ ______  _____ 
|_   _|| |  | || | | || ___ \|  ___|| \ | |    | |  | | / _ \ /  ___|    | | | ||  ___|| ___ \|  ___|
  | |  | |  | || | | || |_/ /| |__  |  \| |    | |  | |/ /_\ \\ `--.     | |_| || |__  | |_/ /| |__  
  | |  | |/\| || | | || ___ \|  __| | . ` |    | |/\| ||  _  | `--. \    |  _  ||  __| |    / |  __| 
  | |  \  /\  /| |_| || |_/ /| |___ | |\  |    \  /\  /| | | |/\__/ /    | | | || |___ | |\ \ | |___ 
  \_/   \/  \/  \___/ \____/ \____/ \_| \_/     \/  \/ \_| |_/\____/     \_| |_/\____/ \_| \_|\____/ 
                                                                                                     
         				Thanks Mickey Knox for remaking the Project RV Interior mod                                                                                            
--]]


-- vehicles list

local vehicles_list = {
	vehicles = {

		vanilla = {
		"Base.Van",
		"Base.StepVan",
		"Base.VanAmbulance",
		"Base.StepVanAirportCatering",
		"Base.StepVanMail",
		"Base.StepVan_Blacksmith",
		"Base.StepVan_Butchers",
		"Base.StepVan_Cereal",
		"Base.StepVan_Citr8",
		"Base.StepVan_Florist",
		"Base.StepVan_Genuine_Beer",
		"Base.StepVan_Glass",
		"Base.StepVan_LouisvilleSWAT",
		"Base.StepVan_Masonry",
		"Base.StepVan_MobileLibrary",
		"Base.StepVan_SmartKut",
		"Base.StepVan_CompleteRepairShop",
		"Base.StepVan_HuangsLaundry",
		"Base.StepVan_Jorgensen",
		"Base.StepVan_Heralds",
		"Base.StepVan_LouisvilleMotorShop",
		"Base.StepVan_MarineBites",
		"Base.StepVan_Mechanic",
		"Base.StepVan_Plonkies",
		"Base.StepVan_RandisPlants",
		"Base.StepVan_Scarlet",
		"Base.StepVan_SouthEasternHosp",
		"Base.StepVan_SouthEasternPaint",
		"Base.StepVan_USL",
		"Base.StepVan_Zippee",
		"Base.VanRadio",
		"Base.VanRadio_3N",
		"Base.VanBrewsterHarbin",
		"Base.Van_BugWipers",
		"Base.VanBuilder",
		"Base.VanCarpenter",
		"Base.VanCoastToCoast",
		"Base.VanDeerValley",
		"Base.VanBeckmans",
		"Base.VanFossoil",
		"Base.VanGreenes",
		"Base.VanMail",
		"Base.VanOvoFarm",
		"Base.Van_Blacksmith",
		"Base.Van_Charlemange_Beer",
		"Base.Van_CraftSupplies",
		"Base.Van_Glass",
		"Base.Van_HeritageTailors",
		"Base.Van_Leather",
		"Base.Van_Locksmith",
		"Base.Van_Masonry",
		"Base.Van_Perfick_Potato",
		"Base.VanGardenGods",
		"Base.VanGardener",
		"Base.VanJohnMcCoy",
		"Base.VanJonesFabrication",
		"Base.VanKerrHomes",
		"Base.VanKnobCreekGas",
		"Base.Van_KnoxDisti",
		"Base.VanKnoxCom",
		"Base.VanKorshunovs",
		"Base.Van_LectroMax",
		"Base.VanLouisvilleLandscaping",
		"Base.Van_MassGenFac",
		"Base.VanMccoy",
		"Base.VanMechanic",
		"Base.VanMeltingPointMetal",
		"Base.VanMetalheads",
		"Base.VanMetalworker",
		"Base.VanMicheles",
		"Base.VanMobileMechanics",
		"Base.VanMooreMechanics",
		"Base.VanOldMill",
		"Base.VanPennSHam",
		"Base.VanPlattAuto",
		"Base.VanPluggedInElectrics",
		"Base.VanRiversideFabrication",
		"Base.VanRosewoodworking",
		"Base.VanSchwabSheetMetal",
		"Base.VanSpiffo",
		"Base.Van_Transit",
		"Base.VanTreyBaines",
		"Base.VanUncloggers",
		"Base.VanUtility",
		"Base.Van_VoltMojo",
		"Base.VanWPCarpentry",
		"Base.VanSeats_Space",
		"Base.VanSeats_LadyDelighter",
		"Base.VanSeats_Trippy",
		"Base.VanSeats_Valkyrie"
		},

		mods = {
			["\\86chevyCUCV"] = {
				"Base.86chevyM1010",
				"Base.86chevyM1031"
			},
			["\\87fordB700"] = {
				"Base.87fordB700military",
				"Base.87fordB700prison",
				"Base.87fordB700school",
				"Base.87fordF700bank",
				"Base.87fordF700swat"
			},
			["\\63Type2Van"] = {
				"Base.63Type2Van",
				"Base.63Type2VanHippie",
				"Base.63Type2VanApocalypse",
				"Base.63Type2VanMilitary"
			},
			["\\FRUsedCarsAlpha"] = {
				"Base.fr_fo_f700_90_boxlarge",
				"Base.fr_fo_f700_90_boxmed",
				"Base.fr_is_nrr_93_boxmed",
				"Base.fr_ch_astro_92",
				"Base.fr_ch_stepvan_80",
				"Base.fr_ch_stepvan_80_police",
				"Base.fr_do_ram_90_moving",
				"Base.fr_fo_econoline_86",
				"Base.fr_fo_econoline_86_ambulance",
				"Base.fr_fo_econoline_86_florist",
				"Base.fr_fo_f350_ambulance_80",
				"Base.fr_fl_bounder_86",
				"Base.fr_fo_econoline_rv_86",
				"Base.fr_fo_b700_prisonlong",
				"Base.fr_fo_b700_schoollong",
				"Base.fr_fo_b700_schoolshort",
				"Base.fr_gm_newlook_70_35foot",
				"Base.fr_gr_llv_89",
				"Base.fr_pi_engine_90_fire"
			},
			["\\filisbustertrucksliveriesas24"] = {
				"Base.f700boxArmysurplus",
				"Base.f700boxLGElouisvilleelectric",
				"Base.f700boxShinrapilas",
				"Base.f700boxTisconstruction",
				"Base.f700boxVHSTRUCKas",
				"Base.f700boxVKYFOODSas",
				"Base.f700boxbombsquadLG",
				"Base.f700boxenergypilas",
				"Base.f700boxlouisvillelogistics",
				"Base.f700boxnaranjita",
				"Base.f700boxshellFedEXas",
				"Base.f700boxshellSYSCOas",
				"Base.f700boxshellUPSas",
				"Base.f700boxshellautozoneas",
				"Base.f700boxshellbestbuyas",
				"Base.f700boxsouthpetrol"
			},
			["\\PzkVanillaPlusCarPack"] = {
				"Base.pzkChevalierVan70",
				"Base.pzkContinentalGuardian",
				"Base.pzkContinentalGuardianLlama",
				"Base.pzkContinentalGuardianService",
				"Base.pzkDashVan70",
				"Base.pzkDashVan70Riddle",
				"Base.pzkF350BoxAmbulance",
				"Base.pzkF350BoxCUCV",
				"Base.pzkF350BoxSwat",
				"Base.pzkF350BoxUmoveit",
				"Base.pzkFranklinBankTruck",
				"Base.pzkFranklinTruckGarbage",
				"Base.pzkFranklinVan70",
				"Base.pzkStepVanFedLog",
				"Base.pzkStepVanHotDog",
				"Base.pzkStepVanIceCream",
				"Base.pzkStepVanMilk",
				"Base.pzkStepVanPizza",
				"Base.pzkStepVanTacoVan",
				"Base.pzkStepVanUPZ",
				"Base.pzkVanBox",
				"Base.pzkVanBoxAmbulance",
				"Base.pzkVanBoxFiretruck",
				"Base.pzkVanBoxSwat",
				"Base.pzkVanCamper",
				"Base.pzkVanGigamart",
				"Base.pzkVanMcCoy",
				"Base.pzkVanMultivan",
				"Base.pzkVanMultivanPayday",
				"Base.pzkVanPoliceWestPoint",
				"Base.pzkVanSeatsTaxi",
				"Base.pzkVanZSquad",
				"Base.pzkVanilaVanAmbulance",
				"Base.pzkFireTruckFlatLadder",
				"Base.pzkFireTruckFlatPumper",
				"Base.pzkFranklinTruckFire",
				"Base.pzkMinivan2",
				"Base.pzkMinivanC22",
				"Base.pzkMinivanChev",
				"Base.pzkMinivanConvoy",
				"Base.pzkMinivanMPV",
				"Base.pzkMinivanPrev",
				"Base.pzkMinivanStellaris",
				"Base.pzkMinivanStellarisMail",
				"Base.pzkMinivanStellarisTaxi",
				"Base.pzkMinivanT3",
				"Base.pzkMinivanT3C",
				"Base.pzkMinivanTask",
				"Base.pzkFranklinTruckBox",
				"Base.pzkFranklinTruckBoxLectromax",
				"Base.pzkFranklinTruckBus",
				"Base.pzkFranklinTruckBusAirport",
				"Base.pzkFranklinTruckBusArmy",
				"Base.pzkFranklinTruckBusPrison",
				"Base.pzkTransitBus",
				"Base.pzkFranklinTruckRV"
			},
			["\\73Winnebago"] = {
				"Base.73Winnebago"
			},
			["\\ATA_Bus"] = {
				"Base.ATAArmyBus",
				"Base.ATAPrisonBus",
				"Base.ATASchoolBus"
			},
			["\\pzkJesterVan"] = {
				"Base.VanJester"
			},
			["\\ATA_VanDeRumba"] = {
				"Base.ATA_VanDeRumba"
			},
			["\\86fordE150"] = {
				"86fordE150",
				"86fordE150long",
				"86fordE150slide",
				"86fordE150slideSpiffo",
				"86fordE150so",
				"86fordE150ksp",
				"86fordE150med",
				"86fordE150mccoy",
				"86fordE150longW"
			},
			["\\86fordE150dnd"] = {
				"86fordE150dnd"
			},
			["\\86fordE150expanded"] = {
				"86fordE150LVairportShuttle",
				"86fordE150postal",
				"86fordE150LBMWradio",
				"86fordE150fossoil",
				"86fordE150massGenfac",
				"86fordE150kyTransit",
				"86fordE150lectromax",
				"86fordE150knoxDistilery",
				"86fordE150ccconstruction",
				"86fordE150beckmansBuilding",
				"86fordE150kerrHomes",
				"86fordE150rosewoodWorking",
				"86fordE150lvLandscaping",
				"86fordE150treyBaines",
				"86fordE150mobileMechanics",
				"86fordE150brewster",
				"86fordE150mooresMechanics",
				"86fordE150plattAutoRepair",
				"86fordE150meltingPointMetal",
				"86fordE150jones",
				"86fordE150riversideFab",
				"86fordE150schwab",
				"86fordE150deerValley",
				"86fordE150knoxTelecom",
				"86fordE150knobCreek",
				"86fordE150oldMillWaterCompany",
				"86fordE150locksmith",
				"86fordE150pluggedInElectrics",
				"86fordE150voltMojo",
				"86fordE150blacksmith",
				"86fordE150zenith",
				"86fordE150greenes",
				"86fordE150oVoFarms",
				"86fordE150perfick",
				"86fordE150heritageTailors",
				"86fordE150tasteTheBrew",
				"86fordE150stoneworksMasonry",
				"86fordE150leatherwork",
				"86fordE150uncloggers",
				"86fordE150bugWipers",
				"86fordE150brushAndClay"
			},
			["\\86fordE150mm"] = {
				"86fordE150mm"
			},
			["\\86fordE150pd"] = {
				"86fordE150pd"
			}
		},
	},

	trailers = {
		vanilla = {

		},

		mods = {
			["\\FRUsedCarsAlpha"] = {
				"Base.Trailer_fr_camper_scamp",
				"Base.Trailer_fr_moving_large",
				"Base.Trailer_fr_semi_container",
				"Base.Trailer_fr_semi_van",
				"Base.Trailer_fr_moving_medium"
			},
			["\\PzkVanillaPlusCarPack"] = {
				"Base.pzkTrailerCamping"
			},
			["\\KI5trailers"] = {
				"Base.TrailerKI5cargoLarge"
			},
			["\\autotsartrailers"] = {
				"Base.TrailerHome",
				"Base.TrailerHomeExplorer",
				"Base.TrailerHomeHartman"
			},
			["\\CytU1550L"] = {
				"Base.UnimogTrailer", --'90 Mercedes-Benz Unimog U1550L
			}
		},
	}
}

return vehicles_list

