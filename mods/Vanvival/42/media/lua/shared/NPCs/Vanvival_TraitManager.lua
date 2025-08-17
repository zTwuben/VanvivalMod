--[[
 _____  _    _  _   _ ______  _____  _   _      _    _   ___   _____      _   _  _____ ______  _____ 
|_   _|| |  | || | | || ___ \|  ___|| \ | |    | |  | | / _ \ /  ___|    | | | ||  ___|| ___ \|  ___|
  | |  | |  | || | | || |_/ /| |__  |  \| |    | |  | |/ /_\ \\ `--.     | |_| || |__  | |_/ /| |__  
  | |  | |/\| || | | || ___ \|  __| | . ` |    | |/\| ||  _  | `--. \    |  _  ||  __| |    / |  __| 
  | |  \  /\  /| |_| || |_/ /| |___ | |\  |    \  /\  /| | | |/\__/ /    | | | || |___ | |\ \ | |___ 
  \_/   \/  \/  \___/ \____/ \____/ \_| \_/     \/  \/ \_| |_/\____/     \_| |_/\____/ \_| \_|\____/ 
                                                                                                                                                                                               
--]]


local function AddCustomTraits()
    TraitFactory.addTrait(
    "VanSurvivor", 
    "Van Survivor", 
    1, 
    "Start out with a stocked vehicle of survival gear, you grabbed everything you could before leaving!", 
    false, 
    false
    );

    TraitFactory.addTrait(
    "RVOwner", 
    "RV Owner", 
    1, 
    "Turns out you already own an RV and you're using it to get away!", 
    false, 
    false
    );

    TraitFactory.sortList();
end

local function AddCustomProfession()
    local Nomad = ProfessionFactory.addProfession(
        "Nomad",
        "Nomad",
        "prof_Nomad",
        -9
    );


    Nomad:addXPBoost(Perks.Mechanics, 2)
    Nomad:addXPBoost(Perks.Cooking, 1)
    Nomad:addXPBoost(Perks.Trapping, 1)
    Nomad:addXPBoost(Perks.Survivalist, 2)
    Nomad:addXPBoost(Perks.PlantScavenging, 1)
    Nomad:addFreeTrait("Mechanics2")



    local proflist = ProfessionFactory:getProfessions()

    for i = 1, proflist:size() do
        local profession = proflist:get(i - 1)
        BaseGameCharacterDetails.SetProfessionDescription(profession);
    end

end
Events.OnGameBoot.Add(AddCustomTraits);
Events.OnGameBoot.Add(AddCustomProfession);