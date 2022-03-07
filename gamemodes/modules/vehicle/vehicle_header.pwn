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


// Getters

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