// Header

enum E_VEHICLE_DATA
{
    E_VEHICLE_DATA_ID,
    E_VEHICLE_DATA_MODEL,
    E_VEHICLE_DATA_OWNER,
    E_VEHICLE_DATA_EXISTS,
    E_VEHICLE_DATA_VEHICLE,
    
    Float:E_VEHICLE_DATA_POS_X,
    Float:E_VEHICLE_DATA_POS_Y,
    Float:E_VEHICLE_DATA_POS_Z,
    Float:E_VEHICLE_DATA_POS_A,

    Float:E_VEHICLE_DATA_HEALTH,

    E_VEHICLE_DATA_COLOR_1,
    E_VEHICLE_DATA_COLOR_2,
    bool:E_VEHICLE_DATA_SIREN
};

new
    gVehicleInfo[MAX_VEHICLES][E_VEHICLE_DATA];

new gVehicleNames[][] = {
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel", "Dumper", "Firetruck", "Trashmaster",
    "Stretch", "Manana", "Infernus", "Voodoo", "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam",
    "Esperanto", "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection", "Hunter", "Premier", "Enforcer",
    "Securicar", "Banshee", "Predator", "Bus", "Rhino", "Barracks", "Hotknife", "Trailer", "Previon", "Coach",
    "Cabbie", "Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow",
    "Pizzaboy", "Tram", "Trailer", "Turismo", "Speeder", "Reefer", "Tropic", "Flatbed", "Yankee", "Caddy", "Solair",
    "Berkley's RC Van", "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale", "Oceanic",
    "Sanchez", "Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler", "ZR-350", "Walton",
    "Regina", "Comet", "BMX", "Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick", "News Chopper", "Rancher",
    "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring", "Sandking", "Blista Compact", "Police Maverick",
    "Boxville", "Benson", "Mesa", "RC Goblin", "Hotring Racer A", "Hotring Racer B", "Bloodring Banger", "Rancher",
    "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropduster", "Stunt", "Tanker", "Roadtrain",
    "Nebula", "Majestic", "Buccaneer", "Shamal", "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck",
    "Fortune", "Cadrona", "SWAT Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer", "Remington", "Slamvan",
    "Blade", "Streak", "Freight", "Vortex", "Vincent", "Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder",
    "Primo", "Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite", "Windsor", "Monster", "Monster",
    "Uranus", "Jester", "Sultan", "Stratum", "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna", "Bandito",
    "Freight Flat", "Streak Carriage", "Kart", "Mower", "Dune", "Sweeper", "Broadway", "Tornado", "AT-400", "DFT-30",
    "Huntley", "Stafford", "BF-400", "News Van", "Tug", "Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club",
    "Freight Box", "Trailer", "Andromada", "Dodo", "RC Cam", "Launch", "LSPD Car", "SFPD Car", "LVPD Car",
    "Police Rancher", "Picador", "S.W.A.T", "Alpha", "Phoenix", "Glendale", "Sadler", "Luggage", "Luggage", "Stairs",
    "Boxville", "Tiller", "Utility Trailer"
};

// Getters

// Vehicle_ReturnNameFromModel(model)
// {
//     new
//         name[32] = "None";

//     if (model < 400 || model > 611)
//         return name;

//     format(name, sizeof(name), g_arrVehicleNames[model - 400]);
//     return name;
// }

// Vehicle_ReturnNameFromID(vehicleid)
// {
//     new
//         model = GetVehicleModel(vehicleid),
//         name[32] = "None";

//     if (model < 400 || model > 611)
//         return name;

//     format(name, sizeof(name), g_arrVehicleNames[model - 400]);
//     return name;
// }

Vehicle_GetModelByName(const name[])
{
    if (IsNumeric(name) && (strval(name) >= 400 && strval(name) <= 611))
        return strval(name);

    for (new i = 0; i < sizeof(gVehicleNames); i ++)
    {
        if (strfind(gVehicleNames[i], name, true) != -1)
        {
            return i + 400;
        }
    }
    return 0;
}

// Vehicle_GetID(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID];
// }

// Vehicle_GetOwner(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_OWNER];
// }

// Vehicle_GetHealth(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_HEALTH];
// }

// Vehicle_GetColor1(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_COLOR_1];
// }

// Vehicle_GetColor2(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_COLOR_2];
// }

// Vehicle_CheckSiren(vehicleid)
// {
//     return gVehicleInfo[vehicleid][E_VEHICLE_DATA_SIREN];
// }