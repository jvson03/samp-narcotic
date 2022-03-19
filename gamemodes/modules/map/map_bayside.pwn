// Dependencies
#include <YSI_Coding\y_hooks>

// Header

#pragma warning disable 239, 214, 217

new SubwayObject,
    BaseObjects[3];

// Functions

RemoveBuildings(playerid)
{
    SetPVarInt(playerid, "removedbuildings", 1);

 	// RANCH
	RemoveBuildingForPlayer(playerid, 11618, -688.1172, 939.1797, 11.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 11490, -688.1172, 939.1797, 11.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 11663, -688.1172, 939.1797, 11.1250, 0.25);
	
	// EQ BLOCK
	RemoveBuildingForPlayer(playerid, 3300, -1464.3438, 2656.5000, 56.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 3341, -1446.4531, 2639.3516, 54.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3342, -1447.2344, 2653.3047, 54.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 11673, -1461.1563, 2627.6797, 62.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1479.6953, 2611.3984, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1483.6484, 2611.3984, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 11479, -1460.9141, 2613.7813, 54.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2613.5938, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2617.6250, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2621.6250, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 11543, -1461.1563, 2627.6797, 62.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2625.6094, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2629.4688, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2633.3281, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -1454.2734, 2640.1406, 55.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 11461, -1466.0313, 2637.5938, 54.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2637.1797, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 3278, -1485.7188, 2641.0391, 59.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -1457.8672, 2648.9922, 55.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 11544, -1483.2813, 2642.3828, 56.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 3170, -1446.4531, 2639.3516, 54.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 700, -1441.7891, 2647.3281, 55.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3173, -1447.2344, 2653.3047, 54.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3285, -1464.3438, 2656.5000, 56.6484, 0.25);

	// Downtown Bayside
	RemoveBuildingForPlayer(playerid, 9300, -2512.2344, 2309.0391, 10.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9305, -2479.5703, 2317.7734, 3.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 9306, -2510.3203, 2295.9766, 3.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 9307, -2529.5469, 2319.7266, 3.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 9308, -2501.3594, 2319.7266, 3.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 9309, -2548.8672, 2308.3906, 3.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 9370, -2512.2344, 2309.0391, 10.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9398, -2510.3203, 2295.9766, 3.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 9302, -2488.0859, 2280.2813, 11.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 9370, -2512.2344, 2309.0391, 10.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9371, -2488.0859, 2280.2813, 11.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 9303, -2512.1250, 2282.5391, 9.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 9371, -2488.0859, 2280.2813, 11.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 9372, -2512.1250, 2282.5391, 9.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2500.8203, 2273.9688, 4.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2498.2266, 2287.4531, 7.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2480.0078, 2285.7813, 18.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1367, -2477.3984, 2274.1875, 4.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2517.8438, 2291.1172, 12.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2504.7188, 2291.1172, 12.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1624, -2444.9766, 2252.6641, 12.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, -2444.8203, 2251.9922, 10.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -2460.3984, 2339.7578, 3.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2513.0625, 2424.2109, 19.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2490.8984, 2387.2578, 16.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2467.7891, 2367.4219, 11.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2376.0000, 2351.8281, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -2458.4453, 2247.5469, 4.0859, 0.25);

	// Necessary removals
    RemoveBuildingForPlayer(playerid, 9383, -2227.5391, 2326.8750, 5.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 9241, -2227.5391, 2326.8750, 5.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 11630, -2090.8359, 2314.0625, 23.8125, 0.25);
	RemoveBuildingForPlayer(playerid, 11420, -2090.8359, 2314.0625, 23.8125, 0.25);

	// Remove + replace
    RemoveBuildingForPlayer(playerid, 9222, -2276.5391, 2330.1484, 4.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 9248, -2227.3516, 2315.9531, 4.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 9360, -2276.5391, 2330.1484, 4.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 9408, -2227.3516, 2315.9531, 4.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 11644, -1979.6172, 2361.4375, 36.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 11514, -1979.6172, 2361.4375, 36.7422, 0.25);
	
	// El Quebrados Signs
	RemoveBuildingForPlayer(playerid, 3335, -1614.0391, 2662.1953, 54.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3335, -1338.6094, 2652.2109, 49.8438, 0.25);
	
	// EQ MECHANIC
	RemoveBuildingForPlayer(playerid, 3301, -1566.1719, 2653.8828, 56.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3297, -1584.0547, 2652.4609, 56.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -1579.5547, 2640.3750, 55.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 3242, -1584.0547, 2652.4609, 56.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 3241, -1568.9609, 2633.5156, 55.3281, 0.25);
	RemoveBuildingForPlayer(playerid, 3284, -1566.1719, 2653.8828, 56.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3298, -1568.9609, 2633.5156, 55.3281, 0.25);
	
	// BAYSIDE MAP
	RemoveObjectsForBaysideMap(playerid);
	
	// CAFE
	RemoveBuildingForPlayer(playerid, 9299, -2514.9063, 2357.0469, 8.4844, 100.25);
	RemoveBuildingForPlayer(playerid, 9374, -2514.9063, 2357.0469, 8.4844, 100.25);
	RemoveBuildingForPlayer(playerid, 9299, -2514.9063, 2357.0469, 8.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 9374, -2514.9063, 2357.0469, 8.4844, 0.25);
	
	// NEW CGUARD
	RemoveBuildingForPlayer(playerid, 9242, -2322.6016, 2331.4141, 4.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 9260, -2291.6094, 2311.5313, 9.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 9380, -2291.6094, 2311.5313, 9.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 9401, -2322.6016, 2331.4141, 4.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2279.3750, 2327.1484, 3.9531, 0.25);
	
	// WELCOME PUMP
	RemoveBuildingForPlayer(playerid, 11601, -1385.7578, 2640.8594, 54.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 11611, -1383.5547, 2616.5234, 56.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 11451, -1385.7578, 2640.8594, 54.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 11452, -1382.4531, 2648.0859, 55.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 11453, -1414.5078, 2650.4844, 57.5625, 0.25);
	
	//Court
	RemoveBuildingForPlayer(playerid, 9223, -2511.8359, 2473.6406, 16.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 9330, -2481.0000, 2497.6797, 16.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 9406, -2511.8359, 2473.6406, 16.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 9412, -2477.2578, 2455.9609, 21.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 9432, -2481.0000, 2497.6797, 16.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 9434, -2476.8672, 2454.7109, 15.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 647, -2475.1406, 2446.0625, 16.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 9324, -2477.2578, 2455.9609, 21.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 9331, -2476.8672, 2454.7109, 15.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 647, -2468.0391, 2450.6875, 16.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 647, -2455.9297, 2464.5859, 16.0859, 0.25);
	//RemoveBuildingForPlayer(playerid, 9321, -2442.4375, 2450.8750, 14.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -2447.8438, 2463.3516, 21.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 647, -2445.0234, 2460.2734, 14.4219, 0.25);

	
	// PD
	RemoveBuildingForPlayer(playerid, 9246, -2247.4922, 2357.8672, 4.0391, 0.25); // cock_sfn09
	RemoveBuildingForPlayer(playerid, 9403, -2247.4922, 2357.8672, 4.0391, 0.25); // cock_sfn09
	RemoveBuildingForPlayer(playerid, 9381, -2235.5547, 2361.7734, 15.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 9382, -2251.6484, 2380.0938, 10.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, -2226.0625, 2360.8281, 6.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2244.2344, 2361.2031, 4.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2247.6328, 2364.8594, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2246.7734, 2364.4922, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2246.8125, 2365.7578, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1431, -2245.7109, 2363.3047, 4.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 9245, -2235.5547, 2361.7734, 15.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2253.5391, 2372.5469, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2254.0859, 2371.0313, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2252.5391, 2371.0234, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 9247, -2251.6484, 2380.0938, 10.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 1431, -2254.7969, 2385.4609, 4.5000, 0.25);
	
	// HOSPITAL
	RemoveBuildingForPlayer(playerid, 11599, -1512.1563, 2514.4453, 54.8906, 0.25); // LOD
	RemoveBuildingForPlayer(playerid, 11454, -1512.1563, 2514.4453, 54.8906, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -1492.7813, 2518.5938, 55.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 11455, -1505.4609, 2539.4922, 56.7891, 0.25);
	
	// Eagle Security
	RemoveBuildingForPlayer(playerid, 11673, -1461.1563, 2627.6797, 62.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 11543, -1461.1563, 2627.6797, 62.3516, 0.25);
	
	// EQ Bank
	RemoveBuildingForPlayer(playerid, 11600, -1520.9766, 2620.0938, 57.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 3339, -1510.3516, 2646.6563, 54.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 3357, -1523.8047, 2656.6563, 54.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1522, -1509.6563, 2611.1172, 54.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 11449, -1520.9766, 2620.0938, 57.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -1515.2578, 2635.2188, 55.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 3169, -1510.3516, 2646.6563, 54.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 1506, -1532.1328, 2657.4063, 55.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3355, -1523.8047, 2656.6563, 54.8750, 0.25);
}

CreateMap()
{
	// Some misc. roadsigns
    AddSimpleModel(-1,19980, -1500, "sporky/bayside/mercerbridgesign.dff", "sporky/bayside/mercerbridgesign.txd");
    AddSimpleModel(-1,19980, -1501, "sporky/bayside/tdirectionsign1.dff", "sporky/bayside/lbeqsigns.txd");
    AddSimpleModel(-1,19980, -1502, "sporky/bayside/entersign_bs.dff", "sporky/bayside/entersigns.txd");
    AddSimpleModel(-1,19980, -1503, "sporky/bayside/entersign_eq.dff", "sporky/bayside/entersigns.txd");
    AddSimpleModel(-1,19980, -1504, "sporky/bayside/leavesign_bs.dff", "sporky/bayside/entersigns.txd");
    AddSimpleModel(-1,19980, -1505, "sporky/bayside/leavesign_eq.dff", "sporky/bayside/entersigns.txd");
    AddSimpleModel(-1,19980, -1506, "sporky/bayside/milesign_bridge1.dff", "sporky/bayside/lbeqsigns.txd");
    AddSimpleModel(-1,19980, -1507, "sporky/bayside/milesign_bridge2.dff", "sporky/bayside/lbeqsigns.txd");
    AddSimpleModel(-1,1312, -1508, "sporky/bayside/bridgeroadsign.dff", "sporky/bayside/bridgeroadsign.txd");
    AddSimpleModel(-1,19980, -1509, "sporky/bayside/directionsign_bridge2.dff", "sporky/bayside/lbeqsigns.txd");
    AddSimpleModel(-1,19980, -1510, "sporky/bayside/directionsign_bridge3.dff", "sporky/bayside/lbeqsigns.txd");
	AddSimpleModel(-1,19957, -1511, "sporky/bayside/usroutesign.dff", "sporky/bayside/lbeqsigns.txd");
	AddSimpleModel(-1,19957, -1512, "sporky/bayside/i26eastsign.dff", "sporky/bayside/lbeqsigns.txd");
	AddSimpleModel(-1,19957, -1513, "sporky/bayside/i26westsign.dff", "sporky/bayside/lbeqsigns.txd");
	AddSimpleModel(-1,19992, -1514, "sporky/bayside/speed70sign.dff", "sporky/bayside/speed70sign.txd");
	AddSimpleModel(-1,19992, -1515, "sporky/bayside/speed70sign.dff", "sporky/bayside/speed70sign.txd");

	AddSimpleModel(-1,19981, -1516, "sporky/signs/streetsign1.dff", "sporky/signs/streetsign.txd");
	AddSimpleModel(-1,19981, -1517, "sporky/signs/streetsign2.dff", "sporky/signs/streetsign.txd");
	AddSimpleModel(-1,19980, -1518, "sporky/signs/directions_eq1.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1519, "sporky/signs/directions_eq2.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1520, "sporky/signs/directions_eq3.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1521, "sporky/signs/directions_eq4.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1522, "sporky/signs/tdirections_eq1.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1523, "sporky/signs/tdirections_eq2.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1524, "sporky/signs/tdirections_eq3.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1525, "sporky/signs/tdirections_eq4.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1526, "sporky/signs/tdirections_eq5.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1527, "sporky/signs/us87wordsign.dff", "sporky/signs/directionsigns.txd");
	AddSimpleModel(-1,19980, -1528, "sporky/signs/sr207id.dff", "sporky/signs/idsign.txd");
	AddSimpleModel(-1,19980, -1529, "sporky/signs/sr21id.dff", "sporky/signs/idsign.txd");
	AddSimpleModel(-1,19980, -1530, "sporky/signs/elqsign.dff", "sporky/signs/elqsign.txd");

	AddSimpleModel(-1,3336, -1531, "sporky/bayside/frway1sig.dff", "sporky/bayside/frway1sig.txd");
	
	// Mercer Bridge
	AddSimpleModel(-1,9252, -1600, "sporky/bayside/bridge.dff", "sporky/bayside/bridge.txd");
	AddSimpleModel(-1,9248, -1601, "sporky/bayside/cock_sfn08.dff", "sporky/bayside/bridge.txd");
	AddSimpleModel(-1,11514, -1602, "sporky/bayside/nw_bit_12.dff", "sporky/bayside/bridge.txd");
	AddSimpleModel(-1,9222, -1603, "sporky/bayside/road08sfn.dff", "sporky/bayside/bridge.txd");

	// Bayside Cafe + Shop Fronts
	AddSimpleModel(-1,9950, -1604, "sporky/bayside/cafeinterior.dff", "sporky/bayside/cafeinterior.txd");
	AddSimpleModel(-1,9950, -1605, "sporky/bayside/sfn_clothesshop_cm1.dff", "sporky/bayside/newstuff_sfn.txd");
	AddSimpleModel(-1,19325, -1606, "sporky/bayside/cafeglass.dff", "sporky/bayside/cafeinterior.txd");
	AddSimpleModel(-1,5787, -1607, "sporky/bayside/melrose.dff", "sporky/bayside/melrose.txd");
	
	// Bayside Fire / Coastguard
	AddSimpleModel(-1,9950, -1608, "sporky/bayside/coastint.dff", "sporky/bayside/coast.txd");
	AddSimpleModel(-1,9950, -1609, "sporky/bayside/coastbuild.dff", "sporky/bayside/coast.txd");
	AddSimpleModel(-1,19325, -1610, "sporky/bayside/coastglass.dff", "sporky/bayside/coast.txd");
	AddSimpleModel(-1,9950, -1611, "sporky/bayside/cock_sfn06.dff", "sporky/bayside/newstuff_sfn.txd");
	
	// El Quebrados Biker Bar
	AddSimpleModel(-1,9950, -1612, "sporky/bayside/welcomepump.dff", "sporky/bayside/welcomepump.txd");
	
	// Bayside City Hall / Courthouse
	AddSimpleModel(-1,9950, -1613, "sporky/bayside/court.dff", "sporky/bayside/court.txd");
	AddSimpleModel(-1,9950, -1614, "sporky/bayside/sfn_preshedge1.dff", "sporky/bayside/court.txd");
	AddSimpleModel(-1,9950, -1615, "sporky/bayside/sfn_wall_cm01.dff", "sporky/bayside/court.txd");
	AddSimpleModel(-1,9950, -1616, "sporky/bayside/land_sfn21.dff", "sporky/bayside/court.txd");
	
	// Bayside Sheriff Building
	AddSimpleModel(-1,9950, -1617, "sporky/bayside/cock_sfn09.dff", "sporky/bayside/newstuff_sfn.txd");
	AddSimpleModel(-1,9950, -1618, "sporky/bayside/copshop.dff", "sporky/bayside/copshop.txd");
	AddSimpleModel(-1,19325, -1619, "sporky/bayside/copfence.dff", "sporky/bayside/copshop.txd");
	AddSimpleModel(-1,10183, -1620, "sporky/bayside/copspaces.dff", "sporky/bayside/copshop.txd");
	
	// Hospital / FD
	AddSimpleModel(-1,9950, -1621, "sporky/bayside/hospital.dff", "sporky/bayside/hospital.txd");
	AddSimpleModel(-1,13028, -1629, "objects/rollerdoor_fire.dff", "objects/rollerdoor_fire.txd"); 	// Fire Station Bay Door
	AddSimpleModel(-1,14401, -1630, "objects/gymbenchsingle.dff", "objects/gymbenchsingle.txd");	// Gym Bench (for locker rooms)
	
	// My custom ranch edit
	AddSimpleModel(-1,15034, -1636, "sporky/ranch/des_ranch.dff", "sporky/ranch/des_ranch.txd");
	AddSimpleModel(-1,14859, -1637, "sporky/ranch/ranchhouse.dff", "sporky/ranch/des_ranch.txd");
	AddSimpleModel(-1,1506, -1638, "sporky/ranch/ranchdoor.dff", "sporky/ranch/des_ranch.txd");
	CreateDynamicObject(-1636, -688.12, 939.18, 11.13,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1);
	CreateDynamicObject(-1637, -671.810607, 939.254150, 14.607811, 0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, 1); // Evelyn_Mercer (-1637)
    
	// Ranch decorations
	CreateDynamicObject(2074, -670.84, 939.48, 15.89,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(19632, -688.09, 931.57, 12.61,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(14862, -668.49, 938.65, 13.29,   0.00, 0.00, 89.30, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(14861, -669.84, 938.82, 12.97,   0.00, 0.00, 91.60, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(2025, -673.66, 937.77, 12.60,   0.00, 0.00, 90.20, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(2020, -668.95, 941.65, 12.56,   2.80, 0.00, -89.90, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(14890, -668.24, 941.07, 13.90,   0.00, 0.00, 92.60, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(2673, -697.94, 940.90, 12.70,   0.00, 0.00, -39.50, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(2674, -698.33, 941.31, 12.62,   0.00, 0.00, 12.90, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(19996, -698.31, 940.58, 12.62,   0.00, 0.00, -46.70, -1, 0, -1, 50.0, 50.0, -1, 0);
	CreateDynamicObject(19873, -697.25, 938.48, 12.68,   0.00, 0.00, 0.00, -1, 0, -1, 25.0, 25.0, -1, 0);
	CreateDynamicObject(19874, -697.13, 938.54, 12.61,   0.00, 0.00, 133.90, -1, 0, -1, 25.0, 25.0, -1, 0);
	CreateDynamicObject(1510, -697.32, 940.86, 12.63,   0.00, 0.00, 0.00, -1, 0, -1, 25.0, 25.0, -1, 0);
	CreateDynamicObject(2752, -697.05, 938.37, 12.59,   -6.20, 0.00, -113.00, -1, 0, -1, 25.0, 25.0, -1, 0);
	CreateDynamicObject(14521, -698.23, 941.17, 12.77,   0.00, 0.00, 0.00, -1, 0, -1, 5.0, 5.0, -1, 0);
	CreateDynamicObject(15027, -698.14, 943.35, 12.93,   0.00, 0.00, -23.60, -1, 0, -1, 25.0, 25.0, -1, 0);


    // El Quebrados Mechanics
    AddSimpleModel(-1, 9927, -1643, "sporky/eq/towground.dff", "sporky/eq/towing.txd");
    //CreateDynamicObject(-1643, -1489.7266 - 93.298, 2617.6016 + 46.056, 69.0547 - 14.486, 0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1 // Towing Ground
    
    AddSimpleModel(-1, 1337, -1644, "objects/invislightw.dff", "objects/invislights.txd");	// Invisible White Light
    CreateDynamicObject(-1644, -1570.94, 2638.48, 61.61,   0.00, 0.00, 0.00);
    
	CreateDynamicObject(1411, -1587.72, 2643.43, 56.34,   0.00, 0.00, 88.86);
	CreateDynamicObject(1411, -1587.60, 2648.66, 56.34,   0.00, 0.00, 88.86);
	CreateDynamicObject(1411, -1587.48, 2653.90, 56.34,   0.00, 0.00, 88.86);
	CreateDynamicObject(1411, -1585.97, 2638.68, 56.34,   0.00, 0.00, 130.92);
	CreateDynamicObject(1411, -1582.46, 2634.70, 56.34,   0.00, 0.00, 132.12);
	CreateDynamicObject(1411, -1578.76, 2630.84, 56.34,   0.00, 0.00, 135.66);
	CreateDynamicObject(19868, -1574.40, 2627.79, 54.87,   0.00, 0.00, 149.04);
	CreateDynamicObject(19868, -1569.71, 2625.30, 54.87,   0.00, 0.00, 155.10);
	CreateDynamicObject(12978, -1580.64, 2648.80, 55.24,   0.00, 0.00, 180.00);
	CreateDynamicObject(13027, -1580.64, 2648.80, 58.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(12930, -1586.13, 2638.56, 53.51,   0.00, -120.00, -90.00);
	CreateDynamicObject(19869, -1570.16, 2641.13, 54.88,   0.00, 0.00, 180.00);
	CreateDynamicObject(1414, -1559.59, 2641.22, 56.34,   0.00, 0.00, 180.00);
	CreateDynamicObject(1343, -1581.60, 2637.90, 55.64,   0.00, 0.00, 245.70);
	CreateDynamicObject(1343, -1583.14, 2637.85, 55.64,   0.00, 0.00, 310.80);
	CreateDynamicObject(1412, -1556.87, 2643.90, 56.11,   0.00, 0.00, 90.00);
	CreateDynamicObject(1413, -1556.82, 2649.14, 56.12,   0.00, 0.00, 90.00);
	CreateDynamicObject(1412, -1556.89, 2654.43, 56.14,   0.00, 0.00, 90.00);
	
	new eqmobj = CreateDynamicObject(1684, -1559.76, 2646.71, 56.44,   0.00, 0.00, 270.00);
	SetDynamicObjectMaterial(eqmobj, 7, 12978, "ce_payspray", "laspryshpsig1", 0);
	
	CreateDynamicObject(2984, -1557.21, 2658.54, 56.15,   0.00, 0.00, 451.56);
	CreateDynamicObject(19868, -1556.86, 2638.61, 54.80,   0.00, 0.00, 270.00);
	CreateDynamicObject(19868, -1556.81, 2624.58, 54.80,   0.00, 0.00, 270.00);
	CreateDynamicObject(19868, -1559.67, 2622.14, 54.80,   0.00, 0.00, 173.70);
	CreateDynamicObject(19868, -1564.79, 2623.32, 54.80,   0.00, 0.00, 160.32);
	CreateDynamicObject(16101, -1556.94, 2626.20, 54.78,   90.00, 0.00, 0.00);
	CreateDynamicObject(16101, -1556.94, 2631.18, 54.78,   90.00, 0.00, 0.00);
	CreateDynamicObject(16101, -1556.94, 2636.15, 54.78,   90.00, 0.00, 0.00);
	CreateDynamicObject(16101, -1556.88, 2636.07, 47.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(16101, -1557.02, 2627.16, 47.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(16101, -1557.09, 2622.03, 47.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(19869, -1564.90, 2641.14, 54.88,   0.00, 0.00, 180.00);
	CreateDynamicObject(19869, -1559.63, 2641.14, 54.88,   0.00, 0.00, 180.00);
	CreateDynamicObject(12930, -1576.21, 2644.73, 53.21,   0.00, 120.00, 0.00);
	CreateDynamicObject(19772, -1575.17, 2644.47, 55.43,   0.00, 0.00, -1.62);
	CreateDynamicObject(19772, -1575.17, 2642.79, 55.43,   0.00, 0.00, 5.46);
	CreateDynamicObject(19772, -1575.10, 2643.63, 56.65,   0.00, 0.00, -5.46);
	eqmobj = CreateDynamicObject(3334, -1585.20, 2646.71, 56.81,   0.00, 0.00, 180.00);
	SetDynamicObjectMaterial(eqmobj, 0, 12978, "ce_payspray", "laspryshpsig1", 0);
	
	CreateDynamicObject(3262, -1555.49, 2636.49, 54.28,   -3.95, -1.43, 91.38);
	CreateDynamicObject(1483, -1568.88, 2639.36, 56.63,   0.00, 0.00, 270.00);
	CreateDynamicObject(1483, -1561.65, 2639.35, 56.63,   0.00, 0.00, 270.00);
	CreateDynamicObject(19899, -1562.32, 2646.67, 54.89,   0.00, 0.00, 179.10);
	CreateDynamicObject(2063, -1569.33, 2641.65, 55.76,   0.00, 0.00, 180.72);
	CreateDynamicObject(2063, -1566.65, 2641.71, 55.76,   0.00, 0.00, 180.72);
	CreateDynamicObject(2062, -1564.71, 2641.66, 55.47,   0.00, 0.00, 130.92);
	CreateDynamicObject(2062, -1563.84, 2641.69, 55.47,   0.00, 0.00, 97.56);
	CreateDynamicObject(1650, -1570.13, 2641.68, 56.84,   0.00, 0.00, 48.36);
	CreateDynamicObject(1650, -1569.85, 2641.63, 56.84,   0.00, 0.00, 21.84);
	CreateDynamicObject(1650, -1568.42, 2641.62, 56.84,   0.00, 0.00, 18.54);
	CreateDynamicObject(1650, -1568.63, 2641.76, 56.84,   0.00, 0.00, -0.66);
	CreateDynamicObject(2984, -1557.28, 2659.97, 56.17,   0.00, 0.00, 451.56);
	CreateDynamicObject(19921, -1567.46, 2641.91, 55.78,   0.00, 0.00, 178.92);
	CreateDynamicObject(19921, -1565.84, 2641.95, 55.78,   0.00, 0.00, 181.98);
	CreateDynamicObject(19921, -1566.66, 2641.91, 55.78,   0.00, 0.00, 180.78);
	CreateDynamicObject(19921, -1567.46, 2641.91, 55.30,   0.00, 0.00, 180.30);
	CreateDynamicObject(19921, -1566.66, 2641.93, 55.30,   0.00, 0.00, 180.00);
	CreateDynamicObject(19921, -1565.82, 2641.95, 55.30,   0.00, 0.00, 180.00);
	CreateDynamicObject(19900, -1571.15, 2641.52, 54.89,   0.00, 0.00, 0.00);
	CreateDynamicObject(19900, -1571.89, 2641.55, 54.89,   0.00, 0.00, 0.00);
	CreateDynamicObject(2690, -1571.11, 2641.48, 56.12,   0.00, 0.00, 200.46);
	CreateDynamicObject(18633, -1571.84, 2641.53, 55.77,   0.00, 90.00, 50.04);
	CreateDynamicObject(1650, -1567.56, 2641.79, 56.84,   0.00, 0.00, -0.66);
	CreateDynamicObject(1650, -1567.40, 2641.63, 56.84,   0.00, 0.00, -0.66);
	CreateDynamicObject(1650, -1565.77, 2641.73, 56.84,   0.00, 0.00, 13.14);
	CreateDynamicObject(1338, -1562.61, 2649.19, 55.60,   0.00, 0.00, -89.76);
	CreateDynamicObject(1338, -1562.61, 2650.82, 55.60,   0.00, 0.00, -91.56);
	CreateDynamicObject(3864, -1579.52, 2635.81, 60.86,   0.00, 0.00, 192.18);
	CreateDynamicObject(3872, -1572.96, 2637.24, 61.68,   0.00, 0.00, 192.18);


	// Bistro
	AddSimpleModel(-1, 3944, -1400, "objects/dinerbox.dff", "objects/bistro.txd");
	AddSimpleModel(-1, 3946, -1401, "objects/dinerplants.dff", "objects/bistro.txd");
	AddSimpleModel(-1, 1720, -1402, "objects/dinertable.dff", "objects/bistro.txd");
	AddSimpleModel(-1, 3966, -1403, "objects/dinertabletop.dff", "objects/bistro.txd");
	
	CreateDynamicObject(-1400, -2498.844726, 2349.656005, 8.831559, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1400)
	CreateDynamicObject(-1400, -2491.743652, 2349.704345, 8.841561, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1400)
	CreateDynamicObject(-1401, -2491.756591, 2349.659667, 8.743770, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1401)
	CreateDynamicObject(-1401, -2498.845458, 2349.906005, 8.731564, 0.000000, 0.000000, 179.100067, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1401)
	CreateDynamicObject(-1402, -2490.275634, 2347.706542, 8.841555, 0.000000, 0.000000, -2.699998, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2490.291259, 2351.545410, 8.831564, 0.000000, 0.000000, 177.100051, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2490.232666, 2347.646728, 9.523769, 0.000000, 0.000000, 87.599975, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2490.278076, 2351.533203, 9.501558, 0.000000, 0.000000, 85.500000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2493.103271, 2351.458496, 8.763772, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2493.130615, 2348.072998, 8.813770, 0.000000, 0.000000, 178.800003, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2493.105224, 2351.416015, 9.453770, 0.000000, 0.000000, 90.100021, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2493.143066, 2348.063476, 9.473772, 0.000000, 0.000000, 87.999992, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2500.350830, 2347.579833, 8.721558, 0.000000, 0.000000, -5.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2500.237792, 2351.190673, 8.731556, 0.000000, 0.000000, 176.300064, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2500.325683, 2347.574707, 9.401559, 0.000000, 0.000000, 84.800025, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2500.228271, 2351.163574, 9.411560, 0.000000, 0.000000, 86.100013, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2491.546142, 2342.521240, 8.813770, 0.000000, 0.000000, -93.699951, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2491.545898, 2343.364013, 8.793768, 0.000000, 0.000000, 86.199981, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2491.555175, 2343.376953, 9.443769, 0.000000, 0.000000, -3.899999, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2491.529052, 2342.526611, 9.473771, 0.000000, 0.000000, 177.700042, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2495.876220, 2342.482177, 8.731563, 0.000000, 0.000000, 87.799957, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2495.877929, 2343.336425, 8.731564, 0.000000, 0.000000, -92.400024, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2495.883300, 2342.481445, 9.391557, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2495.876464, 2343.315429, 9.381558, 0.000000, 0.000000, 177.400085, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2499.553222, 2342.631103, 8.741564, 0.000000, 0.000000, 86.899978, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2499.529296, 2343.497558, 8.741556, 0.000000, 0.000000, -93.699981, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2499.587158, 2343.438964, 9.401558, 0.000000, 0.000000, -3.799999, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2499.513427, 2342.689697, 9.391558, 0.000000, 0.000000, 174.999984, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1402, -2497.640869, 2347.925537, 8.741563, 0.000000, 0.000000, -4.799998, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1402, -2497.606445, 2351.120849, 8.743772, 0.000000, 0.000000, 178.299926, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1402)
	CreateDynamicObject(-1403, -2497.608642, 2351.161376, 9.413768, 0.000000, 0.000000, -93.699996, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(-1403, -2497.621826, 2347.899902, 9.403774, 0.000000, 0.000000, 85.200019, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (-1403)
	CreateDynamicObject(1972, -2495.931152, 2367.354248, 10.486746, 0.000000, 0.000000, 0.499984, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1972)
	CreateDynamicObject(3965, -2495.273193, 2365.511474, 10.525940, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (3965)
	CreateDynamicObject(1541, -2497.985595, 2367.810302, 10.485939, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1541)
	CreateDynamicObject(1514, -2499.091308, 2364.817626, 10.497739, 0.000000, 0.000000, 90.100021, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1514)
	CreateDynamicObject(1545, -2498.279785, 2370.502441, 10.822921, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1545)
	CreateDynamicObject(1545, -2496.026611, 2370.509765, 10.820328, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1545)
	CreateDynamicObject(1488, -2497.398681, 2370.496582, 10.844362, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1488)
	CreateDynamicObject(1488, -2497.140136, 2370.511230, 10.845447, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1488)
	CreateDynamicObject(1511, -2496.869873, 2370.501220, 10.845438, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1511)
	CreateDynamicObject(11744, -2499.052978, 2365.371582, 10.261745, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (11744)
	CreateDynamicObject(11742, -2499.039306, 2365.384277, 10.255939, 0.000000, 0.000000, 38.599998, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (11742)
	CreateDynamicObject(2820, -2501.679687, 2364.641357, 10.255273, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2820)
	CreateDynamicObject(19830, -2497.311767, 2367.297607, 10.255939, 0.000000, 0.000000, -179.600021, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19830)
	CreateDynamicObject(2848, -2501.627929, 2365.412109, 10.254508, 0.000000, 0.000000, -113.899993, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2848)
	CreateDynamicObject(1543, -2497.981689, 2370.274902, 10.234416, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1543)
	CreateDynamicObject(1543, -2498.097412, 2370.366943, 10.215405, 0.000000, 0.000000, 30.200000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1543)
	CreateDynamicObject(1951, -2497.766113, 2370.339355, 10.425396, 0.000000, 0.000000, -87.000015, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1951)
	CreateDynamicObject(1666, -2496.626220, 2370.351562, 10.334177, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1666)
	CreateDynamicObject(1666, -2496.526611, 2370.341552, 10.334181, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1666)
	CreateDynamicObject(1666, -2496.566650, 2370.232177, 10.344180, 0.000000, 0.000000, 59.199996, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1666)

	new bistroframe = CreateDynamicObject(2257, -2500.274169, 2362.002685, 11.257117, 0.000000, 0.000000, -179.299957, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2257)
	SetDynamicObjectMaterial(bistroframe, 1, 3919, "librest", "StainedGlass", 0);

	bistroframe = CreateDynamicObject(2256, -2493.320800, 2367.212402, 11.029253, 0.000000, 0.000000, -90.099990, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2256)
    SetDynamicObjectMaterial(bistroframe, 0, 3902, "libertyhi3", "marcos02_128", 0);

	bistroframe = CreateDynamicObject(2257, -2500.303955, 2355.665039, 10.651562, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2257)
	SetDynamicObjectMaterial(bistroframe, 1, 3966, "bistro", "Tablecloth", 0);
	
	CreateDynamicObject(1720, -2500.823242, 2355.062744, 8.601553, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1720)
	CreateDynamicObject(1720, -2500.223632, 2355.089599, 8.541555, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1720)
	CreateDynamicObject(2832, -2501.372802, 2369.959228, 10.251380, 0.000000, 0.000000, 10.299999, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2832)
	CreateDynamicObject(2453, -2499.086425, 2366.306152, 10.615945, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2453)
	CreateDynamicObject(1971, -2494.129150, 2369.713134, 12.237945, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (1971)

	bistroframe = CreateDynamicObject(2257, -2493.311279, 2357.970947, 10.871198, 0.000000, 0.000000, -89.800033, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2257)
	SetDynamicObjectMaterial(bistroframe, 1, 3919, "librest", "StainedGlass", 0);
	
	CreateDynamicObject(2868, -2499.046875, 2367.256591, 10.261563, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (2868)
	CreateDynamicObject(18701, -2499.031005, 2367.259765, 9.186596, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (18701)
	CreateDynamicObject(19572, -2501.576416, 2360.350585, 9.089376, 0.000000, 0.000000, 5.799999, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19572)
	CreateDynamicObject(19572, -2501.620605, 2359.976074, 9.079376, 0.000000, 0.000000, -5.399999, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19572)
	CreateDynamicObject(19572, -2501.581054, 2360.123535, 9.419375, 0.000000, 0.000000, -84.700012, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19572)
	CreateDynamicObject(19824, -2499.085205, 2370.380859, 10.243130, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19824)
	CreateDynamicObject(19824, -2499.247070, 2370.445556, 10.241399, 0.000000, 0.000000, -177.400054, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19824)
	CreateDynamicObject(19823, -2499.183105, 2370.174804, 10.252689, 0.000000, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19823)
	CreateDynamicObject(19571, -2501.651611, 2367.950683, 10.272275, 88.499977, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
	CreateDynamicObject(19571, -2501.582275, 2367.914794, 10.344893, 90.699996, -15.300001, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
	CreateDynamicObject(19571, -2501.616455, 2367.506347, 10.400655, -89.799987, 0.000000, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
	CreateDynamicObject(19571, -2501.662353, 2367.442138, 10.241405, -4.799997, 0.000000, 4.200000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
	CreateDynamicObject(19571, -2501.670166, 2367.384277, 10.232449, -5.100002, 0.000000, 3.800000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
	CreateDynamicObject(19571, -2501.657714, 2367.934082, 10.444563, 86.899963, 6.599995, 0.000000, -1, 0, -1, 50.0, 50.0, -1, -1); // Evelyn_Mercer (19571)
    
    // Downtown Bayside (New)

    AddSimpleModel(-1,9927, -1650, "sporky/downtown/subway.dff", "sporky/downtown/subway.txd");
    SubwayObject = CreateObject(-1650, -2524.91, 2342.92, 9.75, 0.00, 0.00, 0.00, 400.0); // Priority: 1 // Subway + Ground
    
    BaseObjects[0] = CreateObject(18753, -2556.941650, 2333.935302, 3.285936, 0.000000, 0.000000, 0.000000, 200.0); // Veronica_Lee (18753)
    BaseObjects[1] = CreateObject(19543, -2253.826660, 2302.378173, 3.756261, 0.000000, 0.000000, 0.000000, 200.0);  // Evelyn_Mercer (19543)
    BaseObjects[2] = CreateObject(18753, -1510.21, 2664.05, 54.09,   0.00, 0.00, 0.00, 200.0);

	for (new i = 0; i < sizeof(BaseObjects); i ++)
	{
	    SetObjectMaterial(BaseObjects[i], 0, 18887, "forcefields", "white", 0);
    	SetObjectMaterial(BaseObjects[i], 1, 18887, "forcefields", "white", 0);
	}
   	
   	// SUBWAY CONSTRUCTION BARRIER
    CreateDynamicObject(7017, -2501.141845, 2307.583007, -0.464027, 0.000000, 0.000000, -45.099998); // Evelyn_Mercer (7017)
    // CreateDynamicObject(-1668, -2478.463867, 2302.924072, 5.756932, 0.000000, 0.000000, 91.000022); // Evelyn_Mercer (-1668)
	// CreateDynamicObject(-1668, -2495.117431, 2302.084960, 6.113125, 0.000000, 0.000000, -136.399978); // Evelyn_Mercer (-1668)

	AddSimpleModel(-1,9927, -1654, "sporky/downtown/theatre.dff", "sporky/downtown/theatre.txd");
	CreateDynamicObject(-1654, -2525.01, 2342.9199, 9.79, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // Theatre
	
	AddSimpleModel(-1,9927, -1655, "sporky/downtown/redbuild.dff", "sporky/downtown/redbuild.txd");
	CreateDynamicObject(-1655, -2485.29, 2280.54, 19.87, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // Red/White Building
	
    AddSimpleModel(-1,6371, -1659, "sporky/downtown/baysidezip.dff", "sporky/downtown/shopflats.txd");
    CreateDynamicObject(-1659, -2524.91, 2342.92, 9.75, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // ZIP Clothing
    
    AddSimpleModel(-1,6371, -1660, "sporky/downtown/shopflats.dff", "sporky/downtown/shopflats.txd");
    CreateDynamicObject(-1660, -2524.91, 2342.92, 9.75, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // Shopflats
    
    AddSimpleModel(-1,16448, -1661, "sporky/downtown/shopbunting.dff", "sporky/downtown/shopflats.txd");
    //CreateDynamicObject(-1661, -2445.644, 2280.272, 9.75, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // Shopflats Bunting Poles
    CreateDynamicObject(-1661, -2524.91, 2342.92, 9.75, 0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1 // Shopflats Bunting Poles

    AddSimpleModel(-1,2074, -1662, "sporky/downtown/shopbulb.dff", "sporky/downtown/shopbulb.txd");
    CreateDynamicObject(-1662, -2449.883544, 2272.082031, 12.411573, 0.000000, -10.399998, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2451.745605, 2272.030517, 11.841565, 3.300000, -5.400000, 85.599975, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2453.474853, 2271.925537, 11.851564, -4.400000, 5.800000, -39.699996, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.133056, 2271.989990, 12.331567, 4.400002, 10.799992, 10.499995, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.850585, 2273.245117, 12.341565, -8.599999, 0.000000, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.789794, 2274.702392, 11.981563, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.705078, 2276.168212, 11.831566, -4.899999, -4.699999, 12.900000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.668457, 2277.429443, 11.731560, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.596191, 2278.819824, 11.861564, 3.899999, -7.000000, 122.399993, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.536865, 2280.229980, 12.001565, 11.099998, 10.000000, 61.999977, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2455.454833, 2281.652099, 12.321561, 7.299998, -7.700001, 22.399997, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.135742, 2281.375732, 12.321563, 10.299998, 0.000000, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.127685, 2280.173583, 12.011566, 3.299999, -5.099998, 45.400005, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.097167, 2278.776367, 11.841568, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.087890, 2277.684570, 11.741563, -2.699999, 0.000000, 32.599998, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.074707, 2276.547363, 11.861567, -7.500000, 4.199999, 19.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.065917, 2275.251464, 11.991766, -5.699997, 5.899999, 7.199999, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2436.047851, 2274.060791, 12.311561, -12.700001, 2.799999, -39.500007, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2441.278076, 2273.071777, 12.250500, -0.700000, 13.200001, 0.000000, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2439.960693, 2273.070312, 11.894190, -10.499996, 9.099998, 5.199998, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2438.596679, 2272.965087, 11.801565, -5.399998, -7.699999, 28.299997, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0
	CreateDynamicObject(-1662, -2437.458740, 2272.889160, 12.014959, 10.199999, -9.999999, 28.299997, -1, 0, -1, 100.0, 100.0, -1, -1); // Bulb // Priority 0


	CreateDynamicObject(19912, -2491.650146, 2298.427490, 0.129687, 0.000000, 0.000000, -44.900005); // Evelyn_Mercer (19912)
	CreateDynamicObject(19912, -2491.650146, 2298.427490, -4.050308, 0.000000, 0.000000, -44.900005); // Evelyn_Mercer (19912)
	
	AddSimpleModel(-1,11453, -1663, "sporky/downtown/baysidesign.dff", "sporky/downtown/baysidesign.txd"); // Bayside Sign
	CreateDynamicObject(-1663, -2511.045410, 2400.286865, 15.361198, 0.000000, 0.000000, 166.900039, -1, 0, -1, 200.0, 200.0, -1, 1); // Bayside Sign
	
	CreateDynamicObject(19279, -2508.59, 2402.12, 15.86,   17.00, 0.00, 169.38); // Bayside Sign Lights
	CreateDynamicObject(19279, -2512.27, 2402.89, 15.86,   17.00, 0.00, 169.38); // Bayside Sign Lights
	
	AddSimpleModel(-1,9927, -1664, "sporky/downtown/hotel.dff", "sporky/downtown/hotel.txd");
	CreateDynamicObject(-1664,  -2524.91 + 14.908, 2342.92 - 28.147, 9.75 + 2.174, 0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // Hotel (gnocchi)
	
	AddSimpleModel(-1,9927, -1665, "sporky/downtown/hotelpool.dff", "sporky/downtown/hotel.txd");
	CreateDynamicObject(-1665,  -2507.156738, 2310.912109, 22.51, 0.00, 0.00, 0.00, -1, 0, -1, 150.0, 150.0, -1, 1); // Priority: 1 // Hotel (gnocchi)
	
	AddSimpleModel(-1,19325, -1666, "sporky/downtown/hotelpoolwin.dff", "sporky/downtown/hotel.txd");
	CreateDynamicObject(-1666,  -2507.156738, 2310.912109, 22.51, 0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1 // Hotel (gnocchi)
	
	AddSimpleModel(-1,6372, -1667, "sporky/downtown/hotelbits.dff", "sporky/downtown/hotel.txd");
	CreateDynamicObject(-1667,  -2524.91 + 16.922, 2342.92 - 27.307, 9.75 + 4.996, 0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1 // Hotel (gnocchi)
	
	// Pool steam
    CreateDynamicObject(18732, -2513.873291, 2309.188964, 15.019980, 0.000000, 0.000000, 0.000000, -1, 0, -1, 20.0, 20.0, -1, 0); // Evelyn_Mercer (18732)
    CreateDynamicObject(1713, -2510.567626, 2317.609863, 22.509981, 0.000000, 0.000000, 0.000000, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (1713)
	CreateDynamicObject(1708, -2507.844482, 2316.366943, 22.489980, 0.000000, 0.000000, -90.100006, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (1708)
	CreateDynamicObject(630, -2507.760253, 2317.406982, 23.530000, 0.000000, 0.000000, -28.300003, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (630)
	CreateDynamicObject(2726, -2509.739746, 2315.956054, 23.249994, 0.000000, 0.000000, 0.000000, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (2726)
    
    new pooltowels[2];
    pooltowels[0] = CreateDynamicObject(11707, -2512.939941, 2314.780761, 23.580001, 0.000000, 0.000000, 0.000000, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (11707)
	pooltowels[1] = CreateDynamicObject(11707, -2512.088867, 2315.304687, 23.590002, 0.000000, 0.000000, -90.000045, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (11707)
	
	for (new i = 0; i < sizeof(pooltowels); i ++)
	{
	    SetDynamicObjectMaterial(pooltowels[i], 0, 18887, "forcefields", "white", 0);
	    SetDynamicObjectMaterial(pooltowels[i], 1, 18887, "forcefields", "white", 0);
	    SetDynamicObjectMaterial(pooltowels[i], 2, 18887, "forcefields", "white", 0);
	}
	
	new poolring = CreateDynamicObject(1461, -2513.658691, 2314.654785, 22.640855, -11.000002, 3.700000, 1.999999, -1, 0, -1, 20.0, 20.0, -1, 0);// Evelyn_Mercer (1461)
    SetDynamicObjectMaterial(poolring, 1, 18887, "forcefields", "white", 0);
    
    CreateDynamicObject(1827, -2509.739501, 2315.905517, 22.479986, 0.000000, 0.000000, 0.000000, -1, 0, -1, 30.0, 30.0, -1, 0); // Evelyn_Mercer (1827)
    CreateDynamicObject(1598, -2509.348632, 2305.444091, 22.527460, 0.000000, 20.200002, 48.799987, -1, 0, -1, 30.0, 30.0, -1, 0);
    CreateDynamicObject(-328, -2511.756591, 2316.202148, 22.500234, 0.000000, 0.00, 270.00, -1, 0, -1, 30.0, 30.0, -1, 0);
	
    // El Banco
    AddSimpleModel(-1, 12822, -1696, "sporky/eq/elbanco.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 12841, -1698, "sporky/eq/bankint.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 19466, -1699, "sporky/eq/bankint_win.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 1523, -1639, "sporky/eq/bankdoor_l.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 1523, -1640, "sporky/eq/bankdoor_r.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 19466, -1641, "sporky/eq/bankwin1.dff", "sporky/eq/elbanco.txd");
    AddSimpleModel(-1, 19466, -1642, "sporky/eq/bankwin2.dff", "sporky/eq/elbanco.txd");
    
    CreateDynamicObject(-1696, -1520.61, 2631.39, 59.04,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
    //CreateDynamicObject(-1697, -1520.61, 2631.39, 59.04,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
	CreateDynamicObject(-1698, -1527.16, 2620.41, 56.89,   0.00, 0.00, 90.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1
    CreateDynamicObject(-1699, -1527.16, 2620.41, 56.89,   0.00, 0.00, 90.00, -1, 0, -1, 200.0, 200.0, -1, 1);
    
    CreateDynamicObject(-1640, -1535.831, 2614.831, 55.040, 0.000, 0.000, 270.000); // Evelyn_Mercer (-1640)
	CreateDynamicObject(-1639, -1535.831, 2611.708, 55.040, 0.000, 0.000, 270.000); // Evelyn_Mercer (-1639)
	
	CreateDynamicObject(-1642, -1533.066, 2611.232, 57.105, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1642)
	CreateDynamicObject(-1642, -1530.157, 2611.212, 57.105, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1642)
	CreateDynamicObject(-1642, -1527.256, 2611.222, 57.105, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1642)
	CreateDynamicObject(-1642, -1524.356, 2611.219, 57.105, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1642)
	CreateDynamicObject(-1641, -1535.889, 2616.634, 57.095, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1641)
	CreateDynamicObject(-1641, -1535.869, 2619.154, 57.095, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1641)
	CreateDynamicObject(-1641, -1535.869, 2621.634, 57.095, 0.000, 0.000, 0.000); // Evelyn_Mercer (-1641)
	
	CreateDynamicObject(1886, -1534.042, 2629.177, 59.224, 15.799, 0.000, 47.799, -1, 0, -1, 30.0, 30.0, -1, -1); // Evelyn_Mercer (1886)
	CreateDynamicObject(1886, -1522.958, 2611.732, 59.344, 15.000, 0.000, -106.100, -1, 0, -1, 30.0, 30.0, -1, -1); // Evelyn_Mercer (1886)
	CreateDynamicObject(1886, -1519.320, 2628.480, 59.310, 15.200, 0.000, -41.700, -1, 0, -1, 30.0, 30.0, -1, -1); // Evelyn_Mercer (1886)
	CreateDynamicObject(1886, -1535.274, 2622.356, 59.257, 12.700, 0.000, 47.500, -1, 0, -1, 30.0, 30.0, -1, -1); // Evelyn_Mercer (1886)

    // Ranch
    CreateDynamicObject(2115, -689.84, 935.94, 12.64,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2115, -687.87, 935.94, 12.64,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1670, -688.34, 935.92, 13.46,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -687.59, 935.06, 13.34,   0.00, 0.00, -89.10, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -689.09, 935.02, 13.27,   0.00, 0.00, -96.30, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -690.66, 935.99, 13.27,   0.00, 0.00, 179.60, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -687.21, 936.85, 13.25,   0.00, 0.00, 87.40, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -689.54, 936.89, 13.28,   0.00, 0.00, 92.80, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2636, -686.01, 935.97, 13.27,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1669, -687.27, 935.96, 13.61,   0.00, 0.00, -74.80, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -690.01, 936.03, 13.52,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -688.90, 935.64, 13.52,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -687.56, 935.69, 13.52,   0.00, 0.00, 43.40, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -686.58, 935.95, 13.52,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -687.26, 936.25, 13.52,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19818, -689.33, 936.19, 13.52,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19786, -688.06, 931.83, 14.47,   0.00, 0.00, -179.80, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19786, -688.07, 931.83, 14.47,   0.00, 0.00, -179.80, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2245, -685.23, 942.52, 13.34,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2001, -683.83, 943.15, 12.63,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2001, -684.03, 942.93, 12.63,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2832, -689.31, 935.90, 13.44,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2822, -687.77, 935.89, 13.39,   0.00, 0.00, -35.60, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19897, -688.37, 936.21, 13.45,   0.00, 0.00, -118.40, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19920, -688.65, 936.19, 13.45,   0.00, 0.00, 157.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19820, -685.11, 942.16, 13.12,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1825, -692.02, 928.23, 12.61,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(642, -692.15, 928.21, 13.90,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(642, -692.16, 928.22, 13.90,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(19273, -690.09, 943.48, 14.03,   0.00, 0.00, 0.20, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2571, -686.95, 942.28, 12.64,   0.00, 0.00, -24.90, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2571, -692.00, 940.93, 12.63,   0.00, 0.00, 27.40, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2251, -691.25, 942.47, 13.97,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(3810, -684.26, 935.76, 14.93,   0.00, 0.00, 170.20, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1509, -690.84, 942.43, 13.33,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1509, -691.36, 942.26, 13.32,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(1665, -691.03, 942.15, 13.13,   0.00, 0.00, 88.30, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2047, -688.24, 941.73, 16.26,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2047, -688.24, 941.73, 16.14,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2047, -688.24, 941.73, 16.18,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2047, -688.24, 941.73, 16.18,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
	CreateDynamicObject(2011, -692.19, 942.89, 12.62,   0.00, 0.00, 0.00, -1, 0, -1, 50.0, 50.0, -1, 1);
    
    // Traffic light signs
    CreateDynamicObject(19964, -2461.034912, 2303.269042, 3.792087, 0.000000, 0.000000, 0.000000); // Evelyn_Mercer (19964)
	CreateDynamicObject(19964, -2477.743408, 2364.724121, 8.173254, 0.000000, 0.000000, -153.299972); // Evelyn_Mercer (19964)
	CreateDynamicObject(19964, -2474.533691, 2437.354980, 14.803458, 0.000000, 0.000000, 93.399993); // Evelyn_Mercer (19964)
	CreateDynamicObject(19964, -2531.960205, 2399.044921, 13.942703, 0.000000, 0.000000, -56.899978); // Evelyn_Mercer (19964)
	
	AddSimpleModel(-1, 12984, -1645, "sporky/eq/eqblock.dff", "sporky/eq/eqblock.txd");
	CreateDynamicObject(-1645, -1465.3676, 2626.3426, 57.68,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
	
	AddSimpleModel(-1, 12986, -1646, "sporky/eq/eqwell.dff", "sporky/eq/eqwell.txd");

	CreateDynamicObject(12846, -1483.087768, 2613.054931, 59.679553, 0.000000, 0.000000, -134.900085); // Evelyn_Mercer (12846)
	CreateDynamicObject(1495, -1476.837036, 2611.165283, 54.815971, 0.000000, 0.000000, 0.000000); // Evelyn_Mercer (1495)
	CreateDynamicObject(1294, -1481.047241, 2667.090820, 59.291793, 0.000000, 0.000000, -83.999984); // Evelyn_Mercer (1294)
	CreateDynamicObject(-1646, -1458.110473, 2636.889648, 56.365951, 0.000000, 0.000000, -89.099937); // Evelyn_Mercer (-1646)
	CreateDynamicObject(11461, -1458.487792, 2637.754882, 54.095943, 0.000000, 0.000000, -2.300033); // Evelyn_Mercer (11461)

	// New EQ Bank
	CreateDynamicObject(12953, -1511.4380, 2616.8899, 59.1200,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
	CreateDynamicObject(12843, -1510.96, 2656.10, 54.77,   0.00, 0.00, 90.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
	CreateDynamicObject(12945, -1529.44, 2650.89, 54.48,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0, -1, 1); // Priority: 1
	CreateDynamicObject(12841, -1510.83, 2631.58, 57.12,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1
	CreateDynamicObject(12842, -1509.91, 2629.70, 55.29,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1
	CreateDynamicObject(12958, -1522.62, 2627.95, 57.74,   0.00, 0.00, 180.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1
	CreateDynamicObject(12954, -1524.57, 2654.76, 55.33,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, 1); // Priority: 1
	CreateDynamicObject(12840, -1509.38, 2630.77, 60.07,   0.00, 0.00, 0.00);
	CreateDynamicObject(12845, -1511.30, 2653.25, 56.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(12844, -1510.96, 2653.13, 56.81,   0.00, 0.00, 90.00);
	CreateDynamicObject(2948, -1515.87, 2648.01, 54.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(2947, -1517.06, 2637.76, 54.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(1441, -1512.44, 2645.66, 55.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(1431, -1531.04, 2640.20, 55.31,   0.00, 0.00, 174.18);
	CreateDynamicObject(1334, -1526.24, 2636.31, 55.88,   0.00, 0.00, -42.06);
	CreateDynamicObject(1344, -1514.99, 2645.48, 55.61,   0.00, 0.00, 0.00);
	CreateDynamicObject(1358, -1530.14, 2637.13, 56.03,   0.00, 0.00, 69.48);
	CreateDynamicObject(1338, -1525.55, 2639.25, 55.52,   0.00, 0.00, 35.58);
	CreateDynamicObject(1338, -1524.60, 2637.92, 55.54,   0.00, 0.00, -25.02);
	CreateDynamicObject(1338, -1523.90, 2639.94, 55.54,   0.00, 0.00, 54.84);
	CreateDynamicObject(1687, -1531.46, 2625.48, 61.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1687, -1531.56, 2616.06, 61.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1691, -1512.91, 2636.85, 59.90,   0.00, 0.00, 90.00);
	CreateDynamicObject(1617, -1516.02, 2658.62, 58.41,   0.00, 0.00, 0.00);
	CreateDynamicObject(1617, -1515.99, 2655.34, 58.41,   0.00, 0.00, 0.00);

	// Ground Col Temp Fix
	new tmp = CreateDynamicObject(8661, -2226.35, 2338.26, 3.94,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, 1); // Priority: 1
	SetDynamicObjectMaterial(tmp, 0, 18887, "forcefields", "white", 0);
	tmp = CreateDynamicObject(8661, -2225.57, 2318.42, 3.94,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, 1); // Priority: 1
    SetDynamicObjectMaterial(tmp, 0, 18887, "forcefields", "white", 0);
	
	// Freeway sign
	CreateDynamicObject(-1531, -2734.211181, 2386.402099, 71.679748, 0.000000, 0.000000, -82.699974); // Evelyn_Mercer (-1520)
	
	// The Bridge:
	CreateDynamicObject(-1601, -2227.35, 2315.95, 4.19,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1 // cock_sfn08
	CreateDynamicObject(-1603, -2276.54, 2330.15, 4.23,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1  // road08sfn
	CreateDynamicObject(-1602, -1979.62, 2361.44, 36.74,   0.00, 0.00, 0.00, -1, 0, -1, 900.0, 900.0, -1, 1); // Priority: 1 // nw_bit_12
	CreateDynamicObject(-1600, -2171.441, 2324.778, 14.1,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1
	
	// Bridge Lights:
	CreateDynamicObject(1297, -2213.52, 2319.53, 15.09,   0.00, 0.00, -86.52, -1, 0, -1, 200.0, 200.0);
	CreateDynamicObject(1297, -2186.48, 2333.87, 18.34,   0.00, 0.00, 90.12, -1, 0, -1, 200.0, 200.0);
	CreateDynamicObject(1297, -2159.38, 2322.93, 21.54,   0.00, 0.00, -92.28, -1, 0, -1, 200.0, 200.0);
	CreateDynamicObject(1297, -2132.41, 2333.38, 24.31,   0.00, 0.00, 81.96, -1, 0, -1, 200.0, 200.0);
	CreateDynamicObject(1297, -2110.51, 2316.43, 26.40,   0.00, 0.00, -107.64, -1, 0, -1, 200.0, 200.0);
	
	// ELQ Sign
	CreateDynamicObject(-1530, -1338.860717, 2651.471191, 51.894569, 0.000000, 0.000000, -52.600006, -1, 0, -1, 100.0, 100.0); // Evelyn_Mercer (-1530)
	CreateDynamicObject(-1530, -1614.402465, 2662.152343, 56.175460, 0.000000, 0.000000, -150.599914, -1, 0, -1, 100.0, 100.0); // Evelyn_Mercer (-1530)
	
	// STOP Signs (Priority -1):
	CreateDynamicObject(19966, -2330.026367, 2379.395019, 4.478381, 0.000000, 0.000000, -42.799987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -2475.010986, 2255.525146, 3.375934, 0.000000, 0.000000, -97.699996, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -2606.117187, 2336.492187, 6.726847, 0.000000, 0.000000, 86.499992, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -2552.673583, 2397.248291, 13.406382, 0.000000, 0.000000, -137.199981, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1985.444946, 2268.612548, 16.504173, 0.000000, 0.000000, -97.199989, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1998.185424, 2267.766113, 16.797752, 0.000000, 0.000000, -98.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1628.082763, 2715.485107, 56.587333, 0.000000, 0.000000, -10.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1617.940917, 2676.696044, 53.411815, 0.000000, 0.000000, 87.700019, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1540.461547, 2660.794433, 54.475921, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1490.555053, 2661.388671, 54.415950, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1537.770507, 2606.746582, 54.415225, 0.000000, 0.000000, 87.999984, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1431.169433, 2610.675292, 54.735973, 0.000000, 0.000000, 177.799957, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1388.523193, 2595.487792, 54.699081, 0.000000, 0.000000, -95.600013, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1353.066284, 2642.014892, 50.153423, 0.000000, 0.000000, -137.100021, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1362.553588, 2676.156982, 50.112358, 0.000000, 0.000000, 120.200004, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1299.812988, 2663.417480, 48.651687, 0.000000, 0.000000, -161.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1270.778076, 2675.680175, 47.988491, 0.000000, 0.000000, -151.200027, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1440.127807, 2365.065917, 51.877761, 0.000000, 0.000000, -83.899993, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1609.406616, 2383.902343, 50.433883, 0.000000, 0.000000, 61.399990, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)
	CreateDynamicObject(19966, -1830.357299, 2134.892822, 6.703796, 0.000000, 0.000000, 112.199974, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19966)

	// Lots of Signs (Priority -1):
	CreateDynamicObject(-1508, -2235.80, 2316.50, 7.89,   0.00, 0.00, 75.30, -1, 0, -1, 250.0, 250.0, -1, -1);// Evelyn_Mercer (-1500)
	CreateDynamicObject(-1500, -2256.350830, 2331.200439, 3.515963, 0.000000, 0.000000, -132.900100, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1500)
	CreateDynamicObject(-1500, -2073.491943, 2314.360351, 20.792776, 0.000000, 0.000000, 54.299995, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1500)
	CreateDynamicObject(-1501, -1985.452514, 2271.214355, 16.615751, 0.000000, 0.000000, -91.000007, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1501)
	CreateDynamicObject(-1509, -1984.228271, 2262.049804, 15.297320, 0.000000, 0.000000, 9.299999, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1509)
	CreateDynamicObject(-1510, -1997.361083, 2289.028076, 17.776372, 0.000000, 0.000000, 176.299972, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1509)
	CreateDynamicObject(-1506, -1983.582763, 2233.925781, 13.012289, 0.000000, 0.000000, -142.800048, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1506)
	CreateDynamicObject(-1507, -1979.143188, 2325.963134, 22.398746, 0.000000, 0.000000, -7.199997, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1507)
	CreateDynamicObject(19987, -2250.337646, 2328.045898, 4.409453, 0.000000, 0.000000, -139.199935, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2256.047363, 2331.532470, 2.567759, 0.000000, 0.000000, -124.999984, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2070.539550, 2294.697998, 18.561182, 0.000000, 0.000000, -131.700027, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2085.770263, 2319.831542, 22.325149, 0.000000, 0.000000, 54.500007, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2015.898803, 2282.638916, 17.549676, 0.000000, 0.000000, 74.799980, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19992, -1985.439941, 2269.653076, 16.051895, 0.000000, 0.000000, -95.499877, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1511, -1985.441894, 2269.666503, 17.247467, 0.000000, 0.000000, -91.899986, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(19992, -1977.585815, 2341.488769, 25.221351, 0.000000, 0.000000, -9.300002, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1944.229248, 2215.388183, 8.720911, 0.000000, 0.000000, -114.100021, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1511, -1818.919799, 2109.520019, 7.171736, 0.000000, 0.000000, -159.300018, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(-1511, -1831.291137, 2165.773925, 5.913645, 0.000000, 0.000000, 25.500000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(-1511, -1800.825073, 2680.773925, 56.467830, 0.000000, 0.000000, -58.300006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(-1511, -1367.302368, 2678.953369, 51.230701, 0.000000, 0.000000, 39.200004, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(-1511, -1632.894165, 2731.104248, 56.896724, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1511)
	CreateDynamicObject(19987, -2709.345458, 2351.703613, 70.489936, 0.000000, 0.000000, -84.100013, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2684.700195, 2408.673339, 56.187206, 0.000000, 0.000000, -24.300003, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(-1512, -2734.983154, 2386.265380, 71.815818, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1512)
	CreateDynamicObject(-1514, -2736.278564, 2402.969482, 72.775772, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1514)
	CreateDynamicObject(-1513, -2309.090820, 2681.657470, 56.017524, 0.000000, 0.000000, 89.999984, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1512, -1892.229003, 2319.640625, 38.516876, 0.000000, 0.000000, -167.100006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1512)
	CreateDynamicObject(-1513, -1897.441528, 2432.212158, 51.806747, 0.000000, 0.000000, 11.900001, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1513, -1813.697387, 2692.233154, 55.378124, 0.000000, 0.000000, 78.800003, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1513, -1822.924682, 2679.937011, 54.373920, 0.000000, 0.000000, 83.600006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(19970, -1829.056152, 2695.752685, 54.161762, 0.000000, 0.000000, 24.299995, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19970)
	CreateDynamicObject(19992, -1760.593750, 2713.710937, 58.686759, 0.000000, 0.000000, -67.399986, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1837.577514, 2654.291748, 51.823856, 0.000000, 0.000000, 141.899993, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1514, -1831.859497, 2695.603759, 54.035148, 0.000000, 0.000000, 78.499977, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1514)
	CreateDynamicObject(-1514, -1831.539306, 2680.428466, 54.453319, 0.000000, 0.000000, 113.800018, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1514)
	CreateDynamicObject(19987, -1609.232543, 2665.734619, 53.635841, 0.000000, 0.000000, -94.200012, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -1396.429809, 2606.636230, 54.166183, 0.000000, 0.000000, 85.800018, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19992, -1372.455932, 2685.041015, 51.821308, 0.000000, 0.000000, 26.499994, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19987, -2332.969726, 2400.475585, 4.609368, 0.000000, 0.000000, 53.200000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19987)
	CreateDynamicObject(19987, -2542.763671, 2388.495605, 13.690109, 0.000000, 0.000000, -46.599987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19987)
	CreateDynamicObject(19987, -2343.027099, 2379.755126, 4.621109, 0.000000, 0.000000, 144.100006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2499.262451, 2401.249755, 15.166457, 0.000000, 0.000000, -155.199996, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2519.980468, 2418.766601, 15.497988, 0.000000, 0.000000, 115.599990, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19987)
	CreateDynamicObject(19987, -2517.552490, 2263.670898, 3.621562, 0.000000, 0.000000, -120.899963, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19987, -2551.949218, 2408.320068, 13.554993, 0.000000, 0.000000, 42.600006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(19992, -1582.532592, 2554.892089, 67.345817, 0.000000, 0.000000, 176.899993, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1206.298461, 2680.992187, 44.961986, 0.000000, 0.000000, -83.100006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1425.691406, 2511.780517, 60.884799, 0.000000, 0.000000, 155.600036, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1514, -2354.649414, 2679.404296, 57.556495, 0.000000, 0.000000, 88.199981, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1514)
	CreateDynamicObject(19987, -2523.335693, 2453.556884, 16.793077, 0.000000, 0.000000, 34.999977, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19986)
	CreateDynamicObject(-1526, -1829.470825, 2132.654785, 6.806324, 0.000000, 0.000000, 111.799980, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1526)
	CreateDynamicObject(-1521, -1821.229125, 2145.822753, 6.589361, 0.000000, 0.000000, 20.800006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1521)
	CreateDynamicObject(-1520, -1826.375854, 2124.672607, 6.878878, 0.000000, 0.000000, -155.299987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1520)
	CreateDynamicObject(-1527, -1820.164062, 2108.729248, 6.835855, 0.000000, 0.000000, -159.600036, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1527, -1829.848876, 2166.022949, 5.358502, 0.000000, 0.000000, 29.899991, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1522, -1634.533203, 2730.818603, 56.913307, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1522)
	CreateDynamicObject(-1523, -1339.734619, 2631.822021, 49.933422, 0.000000, 0.000000, -140.599990, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1523)
	CreateDynamicObject(-1527, -1402.866577, 2714.941162, 58.168708, 0.000000, 0.000000, 51.500011, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1524, -1802.864135, 2699.389892, 55.714649, 0.000000, 0.000000, 129.199874, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1524)
	CreateDynamicObject(-1525, -1807.712524, 2673.052001, 55.763565, 0.000000, 0.000000, -125.399993, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1525)
	CreateDynamicObject(-1527, -1984.031494, 2234.498535, 12.166277, 0.000000, 0.000000, -143.300018, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1527, -1983.395019, 2291.222656, 17.597827, 0.000000, 0.000000, -12.699999, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1520, -1632.040283, 2662.539794, 53.653266, 0.000000, 0.000000, -176.800018, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1520)
	CreateDynamicObject(-1523, -1373.044677, 2592.001708, 55.296813, 0.000000, 0.000000, -117.900016, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1523)
	CreateDynamicObject(-1528, -1399.744262, 2573.839355, 57.234855, 0.000000, 0.000000, 145.899978, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1528)
	CreateDynamicObject(-1528, -1341.146850, 2630.706542, 50.028007, 0.000000, 0.000000, -139.300003, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1528)
	CreateDynamicObject(-1528, -1308.297119, 2646.637451, 48.742996, 0.000000, 0.000000, -69.100006, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1528)
	CreateDynamicObject(-1529, -1617.788208, 2639.519531, 55.837867, 0.000000, 0.000000, -148.500000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1529)
	CreateDynamicObject(-1529, -1801.619018, 2138.886962, 5.784482, 0.000000, 0.000000, -60.299987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1529)
	CreateDynamicObject(-1527, -1664.119995, 1821.098632, 24.690080, 0.000000, 0.000000, -82.900001, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1527, -1581.380004, 1845.444580, 24.942840, 0.000000, 0.000000, 94.400016, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1512, -1692.956665, 1808.572265, 24.710710, 0.000000, 0.000000, -171.500000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1512)
	CreateDynamicObject(-1512, -1679.731933, 1812.604248, 24.807813, 0.000000, 0.000000, -166.500015, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1512)
	CreateDynamicObject(19967, -1681.797119, 1836.153564, 24.411031, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19967)
	CreateDynamicObject(19967, -1696.755126, 1833.291381, 24.337623, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19967)
	CreateDynamicObject(19967, -1502.633056, 1834.802734, 30.077608, 0.000000, 0.000000, -172.899993, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19967)
	CreateDynamicObject(19967, -1486.193847, 1834.370605, 30.867578, 0.000000, 0.000000, -145.900009, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19967)
	CreateDynamicObject(-1513, -1528.130126, 1853.768066, 28.473751, 0.000000, 0.000000, 9.800002, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1513, -1544.441894, 1853.929199, 27.652948, 0.000000, 0.000000, 19.300001, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1513, -1622.298706, 2057.272460, 17.465415, 0.000000, 0.000000, 12.900003, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1513)
	CreateDynamicObject(-1512, -1569.963989, 1732.916625, 4.254529, 0.000000, 0.000000, -123.200012, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1512)
	CreateDynamicObject(-1515, -1555.918457, 1724.616821, 3.091666, 0.000000, 0.000000, -123.999946, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1515)
	CreateDynamicObject(19992, -1722.739379, 1827.084960, 23.360370, 0.000000, 0.000000, 83.799980, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1661.680786, 1822.356445, 24.813741, 0.000000, 0.000000, -87.200019, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1556.620117, 1846.790161, 26.295139, 0.000000, 0.000000, 93.100013, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1420.079711, 1844.387329, 33.641147, 0.000000, 0.000000, -90.400024, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1528, -1165.908569, 1781.558471, 39.287223, 0.000000, 0.000000, -122.599960, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1528)
	CreateDynamicObject(-1528, -1173.706054, 1814.416992, 39.851623, 0.000000, 0.000000, 0.000000, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1528)
	CreateDynamicObject(19992, -1184.888183, 1844.660156, 40.305973, 0.000000, 0.000000, 19.499996, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1527, -1134.266967, 1794.806274, 39.856899, 0.000000, 0.000000, -81.999984, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1527, -1197.180786, 1806.337158, 40.318664, 0.000000, 0.000000, 80.400016, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(19992, -1121.852172, 1797.683105, 41.082946, 0.000000, 0.000000, -78.699989, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1106.346069, 1747.143188, 32.162479, 0.000000, 0.000000, -124.999992, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1251.799560, 1823.970458, 39.391101, 0.000000, 0.000000, 48.200012, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1515, -1699.730346, 2199.716796, 19.979543, 0.000000, 0.000000, 50.099994, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1515)
	CreateDynamicObject(-1515, -1809.200195, 2189.801025, 14.818575, 0.000000, 0.000000, -134.099975, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1515)
	CreateDynamicObject(19992, -1935.416748, 2505.191162, 40.936157, 0.000000, 0.000000, 111.299987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(19992, -1966.869750, 2469.241699, 38.822681, 0.000000, 0.000000, -56.699996, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (19992)
	CreateDynamicObject(-1527, -1960.715332, 2473.951904, 39.245872, 0.000000, 0.000000, -59.699939, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)
	CreateDynamicObject(-1527, -1939.644409, 2503.227294, 40.688056, 0.000000, 0.000000, 119.499992, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1527)

	// Entering/Leaving Signs
	CreateDynamicObject(-1504, -2091.805664, 2307.852539, 22.304172, 0.000000, 0.000000, -124.900039, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1504)
	CreateDynamicObject(-1502, -2271.420410, 2357.723632, 3.753748, 0.000000, 0.000000, 55.699989, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1502)
	CreateDynamicObject(-1502, -2712.461425, 2348.854248, 70.523468, 0.000000, 0.000000, -78.299987, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1502)
	CreateDynamicObject(-1503, -1778.106079, 2700.647216, 58.062324, 0.000000, 0.000000, -53.999988, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1503)
	CreateDynamicObject(-1505, -1763.660156, 2727.145751, 58.034538, 0.000000, 0.000000, 108.200012, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1505)
	CreateDynamicObject(-1503, -1677.469238, 2317.721435, 28.937475, 0.000000, 0.000000, -38.099983, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1503)
	CreateDynamicObject(-1503, -1420.808959, 2482.375488, 60.854759, 0.000000, 0.000000, -19.400003, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1503)
	CreateDynamicObject(-1503, -1203.899536, 2695.177001, 44.735626, 0.000000, 0.000000, 94.599990, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1503)
	CreateDynamicObject(-1505, -1255.315673, 2666.661376, 46.601905, 0.000000, 0.000000, -69.699943, -1, 0, -1, 150.0, 150.0, -1, -1); // Evelyn_Mercer (-1505)

	// No Parking Signs
	CreateDynamicObject(19968, -2550.299804, 2324.885009, 3.648124, 0.000000, 0.000000, 179.100006); // Evelyn_Mercer (19968)
	CreateDynamicObject(19968, -2476.867187, 2337.237548, 3.845933, 0.000000, 0.000000, 0.000000); // Evelyn_Mercer (19968)
	
	// Cafe:
	CreateDynamicObject(-1605, -2514.90, 2357.06, 8.49,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1
	CreateDynamicObject(-1604, -2514.90, 2357.06, 8.49,   0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0);
	CreateDynamicObject(-1606, -2514.90, 2357.06, 8.49,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0);

	// New melrose:
	CreateDynamicObject(-1607, -2528.40, 2358.66, 8.98, 0.00, 0.00, 90.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1
	
	// New coastguard/FD
	CreateDynamicObject(-1608, -2287.823, 2326.739, 15.868, 0.00, 0.00, 90.00, -1, 0, -1, 400.0, 400.0, -1, 1); // Priority: 1
	CreateDynamicObject(-1609, -2287.823, 2326.739, 15.868, 0.00, 0.00, 90.00, -1, 0, -1, 600.0, 600.0);
	CreateDynamicObject(-1610, -2287.823, 2326.739, 15.868, 0.00, 0.00, 90.00, -1, 0, -1, 300.0, 300.0);
	CreateDynamicObject(-1611, -2322.6016, 2331.4141, 4.4063, 0.00, 0.00, 0.00, -1, 0, -1, 400.0, 400.0);

	// Welcome pump EQ
	CreateDynamicObject(-1612, -1406.70, 2632.50, 56.78,   0.00, 0.00, 0.00, -1, -1, -1, 600.0, 600.0);
	CreateDynamicObject(1495, -1413.76, 2640.41, 55.02,   0.00, 0.00, 90.00);
	CreateDynamicObject(1358, -1382.54, 2650.73, 56.18,   0.00, 0.00, 143.10);
	CreateDynamicObject(1335, -1383.57, 2625.12, 56.14,   0.00, 0.00, 180.00);
	CreateDynamicObject(1336, -1385.78, 2625.27, 56.14,   0.00, 0.00, 180.00);
	
	// Court
	CreateDynamicObject(-1614, -2476.87, 2454.71, 15.60,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0); // sfn_preshedge1
	CreateDynamicObject(-1615, -2481.00, 2497.68, 16.34,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0); // sfn_wall_cm01
	CreateDynamicObject(-1616, -2511.84, 2473.64, 16.95,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0, -1, 1); // Priority: 1  // land_sfn21
	CreateDynamicObject(-1613, -2483.391113, 2458.092773, 15.626001, 0.00, 0.00, 9.58, -1, -1, -1, 350.0, 350.0); // court
	
	// PD EXTERIOR
	CreateDynamicObject(-1617, -2247.49, 2357.87, 4.04,   0.00, 0.00, 0.00, -1, 0, -1, 600.0, 600.0);
	CreateDynamicObject(-1618, -2237.65, 2355.53, 3.99,   0.00, 0.00, 131.94, -1, 0, -1, 400.0, 400.0);
	CreateDynamicObject(-1619, -2237.65, 2355.53, 3.99,   0.00, 0.00, 131.94, -1, 0, -1, 400.0, 400.0);

    // CreateDynamicObject(13028, -2236.19, 2365.26, 5.92,   0.00, 0.00, -48.42); // GARAGE DOOR
	CreateDynamicObject(1635, -2224.97, 2347.45, 6.40,   0.00, 0.00, 131.70);
	
	new copParkingSigns[2];
	copParkingSigns[0] = CreateDynamicObject(3263, -2238.85, 2363.76, 3.97,   0.00, 0.00, 222.90);
	copParkingSigns[1] = CreateDynamicObject(3263, -2256.75, 2346.87, 3.93,   0.00, 0.00, 270.18);

	for (new i = 1; i < sizeof(copParkingSigns); i++)
	{
	    SetDynamicObjectMaterial(copParkingSigns[i], 1, 1229, "signs", "bus_stop64", 0xFFFFFFFF);
	    SetDynamicObjectMaterial(copParkingSigns[i], 2, 18887, "forcefields", "white", 0);
	}
	
	SetDynamicObjectMaterial(copParkingSigns[0], 1, 1229, "signs", "bus_stop64", 0xFFFFFFFF);

 	CreateDynamicObject(-1620, -2272.88, 2385.576, 4.736,   0.00, 0.00, 0.00);
	CreateDynamicObject(19967, -2298.96, 2429.25, 3.63,   0.00, 0.00, 40.62);
	

	// HOSPITAL
	CreateDynamicObject(-1621, -1517.45, 2514.90, 54.83, 0.00, 0.00, 0.00, -1, 0, -1, 300.0, 300.0);
	CreateDynamicObject(672, -1489.82, 2505.25, 55.24, 0.00, 0.00, 0.00);

    // The FD Interior (Exterior)
    CreateFDInterior();

	// Old/misc stuff (mainly Bayside)
	CreateBaysideMap();
}


RemoveObjectsForBaysideMap(playerid)
{
	// EQ Traffic Lights
    RemoveBuildingForPlayer(playerid, 1294, -1500.1172, 2589.3359, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1507.9922, 2597.0391, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1508.0000, 2605.4219, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1500.1172, 2612.8594, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1491.7344, 2589.3359, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1483.9531, 2597.0391, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1479.8359, 2605.4219, 59.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, -1491.7344, 2612.8672, 59.2734, 0.25);

	// Bayside
    RemoveBuildingForPlayer(playerid, 9243, -2444.6563, 2275.9844, 8.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 9300, -2512.2344, 2309.0391, 10.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9301, -2530.3516, 2346.2031, 7.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 9305, -2479.5703, 2317.7734, 3.9844, 0.25);
	// RemoveBuildingForPlayer(playerid, 9306, -2510.3203, 2295.9766, 3.9531, 0.25); // Bank alley - removed to stop cars falling
	RemoveBuildingForPlayer(playerid, 9307, -2529.5469, 2319.7266, 3.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 9308, -2501.3594, 2319.7266, 3.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 9309, -2548.8672, 2308.3906, 3.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 9370, -2512.2344, 2309.0391, 10.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9373, -2530.3516, 2346.2031, 7.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 9378, -2444.6563, 2275.9844, 8.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 9379, -2445.1719, 2311.6328, 9.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 9398, -2510.3203, 2295.9766, 3.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2564.3047, 2296.6250, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -2568.1797, 2307.0938, 4.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2560.8672, 2316.8984, 7.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2540.4141, 2285.7109, 7.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2539.4375, 2294.7109, 4.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2535.5859, 2300.5391, 13.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2724.1563, 2342.1250, 74.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2774.9063, 2360.2656, 78.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2729.2969, 2343.2578, 74.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2729.2188, 2365.7734, 74.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2607.2109, 2512.7578, 28.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2579.0547, 2328.6172, 7.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2566.0156, 2346.4141, 7.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2578.4375, 2473.3203, 22.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1346, -2550.3672, 2320.4766, 5.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1346, -2553.0547, 2320.4844, 5.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2548.9766, 2333.5938, 7.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2548.9922, 2352.3359, 11.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2544.5547, 2348.0156, 13.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2539.6172, 2352.3359, 11.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2531.9063, 2295.0313, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2526.9453, 2295.0313, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2519.9453, 2300.5391, 13.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -2531.3438, 2336.8516, 4.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2527.2422, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2520.7188, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2524.0625, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1624, -2509.3281, 2322.2031, 13.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2480.8828, 2295.0313, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2496.7500, 2303.2578, 15.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2510.5469, 2335.7578, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2503.3125, 2341.3672, 4.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 9314, -2493.8594, 2363.4297, 14.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0703, 2364.2188, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2473.2656, 2267.2188, 7.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2476.2891, 2294.7109, 4.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2461.6172, 2297.6875, 7.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, -2444.8203, 2251.9922, 10.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -2430.3438, 2282.0781, 3.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1619, -2476.2109, 2307.9141, 7.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1619, -2476.2109, 2309.5156, 7.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2473.0078, 2325.0625, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2474.0547, 2326.1641, 7.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2461.1641, 2323.5391, 7.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1346, -2451.4063, 2321.0234, 5.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 9244, -2445.1719, 2311.6328, 9.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2423.0469, 2332.1719, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2470.8750, 2339.1250, 7.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2458.3516, 2335.6797, 7.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -2460.3984, 2339.7578, 3.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0469, 2368.0469, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 767, -2505.9766, 2386.5234, 14.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2513.0625, 2424.2109, 19.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2509.4609, 2414.0391, 18.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2511.9531, 2425.9844, 18.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2490.8984, 2387.2578, 16.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2498.8672, 2428.9453, 18.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1315, -2496.3750, 2416.9922, 18.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2532.4766, 2461.9297, 20.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2467.7891, 2367.4219, 11.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2245.1172, 2298.7578, 7.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2279.3750, 2327.1484, 3.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2376.0000, 2351.8281, 7.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1282, -2397.3516, 2353.7344, 4.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 1282, -2395.0703, 2354.2500, 4.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 1282, -2392.7813, 2354.7734, 4.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2246.8125, 2365.7578, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2253.5391, 2372.5469, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2254.0859, 2371.0313, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1264, -2252.5391, 2371.0234, 4.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2301.0234, 2377.2344, 8.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, -2337.2422, 2389.1641, 8.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1431, -2254.7969, 2385.4609, 4.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -2260.5078, 2398.3672, 4.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0703, 2364.2188, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0469, 2368.0469, 4.7578, 0.25);
}

CreateBaysideMap()
{
	// Bollards at cafe
	new bollarditalian = CreateDynamicObject(19121, -2481.23, 2346.94, 7.51,   0.00, 0.00, 0.00); // w
	SetDynamicObjectMaterial(bollarditalian, 0, 18874, "MobilePhone10", "mobilephone10-1", 0);

	bollarditalian = CreateDynamicObject(19123, -2483.73, 2346.94, 7.51,   0.00, 0.00, 0.00); // g
	SetDynamicObjectMaterial(bollarditalian, 0, 18871, "MobilePhone7", "mobilephone7-1", 0);

	bollarditalian = CreateDynamicObject(19124, -2478.73, 2346.94, 7.51,   0.00, 0.00, 0.00); // r
	SetDynamicObjectMaterial(bollarditalian, 0, 18870, "MobilePhone6", "mobilephone6-1", 0);
	
	
	CreateDynamicObject(1352, -2471.80, 2341.82, 3.98,   0.00, 0.00, 180.00);
	CreateDynamicObject(1352, -2460.93, 2321.08, 3.79,   0.00, 0.00, 0.00);
	
	// Garage door + maintenance door for job
	CreateDynamicObject(17951, -2518.036621, 2358.659179, 5.735861, 0.000000, 0.000000, -90.099967, -1, 0, -1, 50.0, 50.0, -1, 0); // Priority: 0
	CreateDynamicObject(11714, -2523.752441, 2358.670166, 5.235597, 0.000000, 0.000000, -90.000030, -1, 0, -1, 50.0, 50.0, -1, 0); // Priority: 0
	
	
	// NO PARKING
	new NoParkingSigns[6];
	NoParkingSigns[0] = CreateDynamicObject(3263, -2530.91, 2337.04, 3.91,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	NoParkingSigns[1] = CreateDynamicObject(3263, -2495.46, 2337.15, 3.91,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	NoParkingSigns[2] = CreateDynamicObject(3263, -2531.68, 2324.91, 3.91,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	NoParkingSigns[3] = CreateDynamicObject(3263, -2495.02, 2324.91, 3.91,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	NoParkingSigns[4] = CreateDynamicObject(3263, -2515.08, 2337.13, 3.91,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	NoParkingSigns[5] = CreateDynamicObject(3263, -2513.45, 2324.90, 3.91,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	
	for (new i = 0; i < sizeof(NoParkingSigns); i++)
	{
	    SetDynamicObjectMaterial(NoParkingSigns[i], 1, 1229, "signs", "bus_stop64", 0xFFFFFFFF);
	    SetDynamicObjectMaterial(NoParkingSigns[i], 2, 18887, "forcefields", "white", 0);
	}
	
	// Covers up Melrose
	CreateDynamicObject(9234, -2510.70, 2395.67, 7.31,   0.00, -0.48, 99.85, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	CreateDynamicObject(9234, -2514.77, 2401.59, 9.81,   -3.90, 0.17, 111.98, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	CreateDynamicObject(9234, -2510.27, 2401.59, 9.81,   -3.90, 0.17, 111.98, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	CreateDynamicObject(9234, -2504.52, 2401.24, 9.80,   -3.90, 0.17, 111.98, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	CreateDynamicObject(9234, -2501.27, 2401.59, 9.81,   -3.90, 0.17, 111.98, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	CreateDynamicObject(9234, -2488.66, 2395.73, 7.14,   -0.17, -0.17, 99.93, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority: -1
	
	// Melrose railings
	CreateDynamicObject(970, -2332.63, 2291.85, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2293.93, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2306.16, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2310.33, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2314.50, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2318.68, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2322.84, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2332.63, 2327.00, 4.66,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2514.72, 2341.16, 5.79,   0.00, 30.70, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2516.51, 2341.16, 6.86,   0.00, 30.70, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2520.62, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2524.79, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2528.94, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2533.09, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2537.24, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2540.97, 2341.21, 8.03,   0.00, 0.00, 0.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2544.52, 2342.68, 8.03,   0.00, 0.00, -45.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2546.48, 2344.63, 8.03,   0.00, 0.00, -45.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2348.20, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2352.35, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2356.50, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2360.65, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2364.80, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	CreateDynamicObject(970, -2547.96, 2368.95, 8.03,   0.00, 0.00, 90.00, -1, 0, -1, 75.0, 75.0, -1, -1); // Priority -1
	
	// Rest of Downtown Bayside
	CreateDynamicObject(6404, 257.83, -1813.45, 12.94,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(6288, 438.74, -1848.88, 7.69,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2456.08, 2281.15, 9.50,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2456.08, 2277.67, 9.50,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2456.08, 2274.18, 9.50,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2454.31, 2271.59, 9.50,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2437.50, 2271.59, 9.50,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2440.97, 2271.59, 9.50,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2450.82, 2271.59, 9.50,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2447.32, 2271.59, 9.50,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2435.23, 2274.18, 9.50,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2435.21, 2277.67, 9.50,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3850, -2435.20, 2281.15, 9.50,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1566, -2447.24, 2251.03, 5.23,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1566, -2444.06, 2251.03, 5.22,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2959, -2445.63, 2263.40, 3.94,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1570, -2454.54, 2319.62, 5.20,   0.00, 0.00, 220.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1598, -2454.48, 2320.37, 4.77,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1598, -2455.02, 2319.90, 4.76,   0.00, 0.00, 100.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1598, -2453.84, 2320.81, 4.77,   0.00, 0.00, 340.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1598, -2454.55, 2319.91, 5.11,   0.00, 0.00, 220.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1598, -2454.04, 2320.46, 5.08,   0.00, 0.00, 320.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3861, -2450.71, 2320.16, 5.12,   0.00, 0.00, 184.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2406, -2451.56, 2318.77, 5.18,   0.00, 0.00, 184.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2406, -2450.85, 2318.80, 5.18,   0.00, 0.00, 184.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2405, -2450.10, 2318.85, 5.18,   0.00, 0.00, 184.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2405, -2449.44, 2318.94, 5.18,   0.00, 0.00, 184.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1640, -2450.85, 2320.82, 4.77,   0.00, 0.00, 280.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1461, -2337.96, 2290.56, 4.79,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1461, -2414.97, 2321.72, 4.79,   0.00, 0.00, 191.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2462.06, 2297.62, 7.86,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2563.43, 2373.91, 13.60,   0.00, 0.00, 164.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1223, -2563.79, 2419.15, 13.80,   0.00, 0.00, 230.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2482.04, 2391.22, 17.23,   0.00, 0.00, 18.25, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2478.35, 2367.40, 12.60,   0.00, 0.00, 204.25, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1338, -2448.53, 2320.46, 4.66,   0.00, 0.00, 293.50, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1338, -2453.42, 2318.31, 4.66,   0.00, 0.00, 30.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3811, -2437.96, 2283.62, 9.84,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3811, -2453.32, 2283.64, 9.84,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1461, -2427.49, 2267.79, 4.93,   0.00, 0.00, 271.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1461, -2427.49, 2296.19, 4.93,   0.00, 0.00, 261.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3860, -2428.99, 2240.25, 5.16,   0.00, 0.00, 269.75, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3862, -2428.99, 2236.61, 5.16,   0.00, 0.00, 269.75, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2372, -2427.70, 2239.63, 3.98,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2382, -2427.89, 2240.60, 4.65,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2705, -2429.82, 2239.48, 5.71,   0.00, 0.00, 240.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2706, -2429.82, 2241.21, 5.71,   0.00, 0.00, 290.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2843, -2430.33, 2238.90, 4.79,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2597, -2428.58, 2239.30, 4.84,   0.00, 0.00, 20.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2583, -2427.85, 2236.59, 4.85,   0.00, 0.00, 269.75, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2484, -2451.76, 2320.93, 5.35,   0.00, 0.00, 20.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1285, -2460.75, 2283.13, 4.56,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1286, -2460.75, 2282.65, 4.56,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1287, -2460.75, 2282.17, 4.56,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1288, -2460.75, 2283.60, 4.56,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1359, -2460.82, 2284.60, 4.68,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1344, -2439.67, 2264.08, 4.78,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1618, -2454.22, 2263.33, 7.79,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1286, -2515.72, 2336.89, 4.56,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1286, -2516.17, 2336.89, 4.56,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3862, -2446.31, 2320.54, 5.12,   0.00, 0.00, 190.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2464, -2447.04, 2321.31, 4.91,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2694, -2445.32, 2321.51, 4.87,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2694, -2445.82, 2321.34, 4.87,   0.00, 0.00, 10.50, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2496, -2445.51, 2319.28, 5.37,   0.00, 0.00, 190.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2496, -2444.99, 2319.37, 5.37,   0.00, 0.00, 190.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2499, -2446.96, 2319.10, 5.38,   330.00, 0.00, 10.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(2499, -2446.29, 2319.21, 5.38,   330.00, 0.00, 10.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1280, -2428.48, 2301.71, 4.39,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1280, -2428.48, 2287.37, 4.39,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1280, -2428.48, 2273.31, 4.39,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1280, -2428.48, 2259.04, 4.39,   0.00, 0.00, 179.99, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3854, -2460.41, 2339.76, 3.25,   0.00, 0.00, 0.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3854, -2531.38, 2336.75, 4.28,   0.00, 0.00, 320.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3854, -2458.00, 2247.38, 3.96,   0.00, 0.00, 344.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(13011, -2440.24, 2270.91, 5.61,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1532, -2487.90, 2343.46, 3.98,   0.00, 0.00, 90.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1532, -2502.63, 2347.49, 3.98,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1498, -2449.24, 2308.88, 3.99,   0.00, 0.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(921, -2297.91, 2236.09, 4.49,   270.00, 180.00, 180.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3811, -2437.96, 2283.62, 13.71,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(3811, -2453.32, 2283.64, 13.83,   0.00, 0.00, 270.00, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(1688, -2441.28, 2253.63, 10.78,   0.00, 0.00, 180.90, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	CreateDynamicObject(16101, -2436.88, 2254.51, 5.19,   0.00, -45.00, 11.34, -1, 0, -1, 100.0, 100.0, -1, -1); // Priority -1
	
	// Traffic Lights + Street Lights
	CreateDynamicObject(3853, -2523.22, 2267.94, 7.74,   0.00, 0.00, 243.30, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2337.90, 2369.98, 8.73,   0.00, 0.00, 323.47, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2362.39, 2355.04, 7.82,   0.00, 0.00, 112.44, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2382.91, 2341.83, 7.73,   0.00, 0.00, 277.84, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2409.71, 2344.55, 7.82,   0.00, 0.00, 97.50, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2428.46, 2264.34, 7.82,   0.00, 0.00, 357.25, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2428.46, 2287.46, 7.82,   0.00, 0.00, 357.25, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2428.54, 2308.72, 7.82,   0.00, 0.00, 357.25, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2428.72, 2238.58, 7.82,   0.00, 0.00, 357.25, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2430.14, 2331.19, 7.82,   0.00, 0.00, 280.63, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2451.82, 2336.02, 7.82,   0.00, 0.00, 97.50, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2461.85, 2252.31, 7.83,   0.00, 0.00, 0.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2462.03, 2297.57, 7.84,   0.00, 0.00, 0.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2468.08, 2367.12, 11.55,   0.00, 0.00, 26.31, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2471.29, 2277.72, 7.83,   0.00, 0.00, 180.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2475.00, 2326.03, 7.82,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2488.66, 2409.87, 19.22,   0.00, 0.00, 27.33, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2490.61, 2387.58, 17.66,   0.00, 0.00, 206.31, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2495.19, 2326.00, 7.84,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2495.29, 2336.05, 7.83,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2496.58, 2266.04, 7.83,   0.00, 0.00, 79.26, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2513.62, 2325.99, 7.84,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2514.91, 2336.02, 7.84,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2530.74, 2335.97, 7.66,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2531.85, 2326.00, 7.84,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2540.46, 2285.27, 7.85,   0.00, 0.00, 65.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2553.53, 2336.04, 7.84,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3853, -2563.98, 2296.94, 7.85,   0.00, 0.00, 204.53, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2458.67, 2325.11, 3.96,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2459.86, 2338.63, 3.94,   0.00, 0.00, 0.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2471.87, 2322.76, 3.96,   0.00, 0.00, 180.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2476.34, 2337.15, 3.96,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2493.18, 2421.48, 15.45,   0.00, 0.00, 299.26, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2502.64, 2430.80, 15.45,   0.00, 0.00, 389.74, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2506.35, 2411.92, 15.40,   0.00, 0.00, 210.58, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2515.01, 2421.47, 15.45,   0.00, 0.00, 119.06, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2552.20, 2324.88, 3.96,   0.00, 0.00, -90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2558.02, 2320.73, 3.96,   0.00, 0.00, 0.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2569.59, 2341.51, 4.04,   0.00, 0.00, 177.18, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(3855, -2571.68, 2337.10, 3.96,   0.00, 0.00, 90.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2460.52, 2339.89, 3.60,   0.00, -0.70, 214.82, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2494.92, 2415.64, 14.61,   0.00, 0.00, 377.98, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2498.45, 2431.05, 14.86,   0.00, 0.00, 101.16, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2510.63, 2411.55, 14.89,   0.00, 0.00, -69.00, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2557.88, 2340.39, 3.46,   0.00, 0.00, 339.25, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2569.69, 2323.25, 3.46,   0.00, 0.00, 159.49, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1
	CreateDynamicObject(1352, -2569.70, 2323.06, 3.86,   0.00, 0.00, 388.09, -1, 0, -1, 125.0, 125.0, -1, -1); // Priority -1

	// SF Bridge Blockers
	CreateDynamicObject(4511, -2686.89, 2055.98, 59.90,   0.00, 0.00, 90.00, -1, 0, -1, 200.0, 200.0, -1, -1);
	CreateDynamicObject(4527, -1009.31, 943.79, 35.48,   0.00, 0.00, 180.00, -1, 0, -1, 200.0, 200.0, -1, -1);
	CreateDynamicObject(4524, -1139.72, 1099.96, 39.48,   0.00, 0.00, 0.00, -1, 0, -1, 200.0, 200.0, -1, -1);

 	// EQ Traffic Lights
	CreateDynamicObject(1350, -1506.80, 2606.79, 54.78,   0.00, 0.00, 90.00);
	CreateDynamicObject(1350, -1490.51, 2611.36, 54.78,   0.00, 0.00, 0.00);
	CreateDynamicObject(1350, -1501.40, 2591.34, 54.78,   0.00, 0.00, 180.00);
	CreateDynamicObject(1350, -1485.70, 2595.80, 54.78,   0.00, 0.00, 270.00);
}

CreateFDInterior()
{
    new tmpobjid;
	tmpobjid = CreateDynamicObject(19466, -2287.730224, 2329.038330, 5.952986, 0.000000, 0.000000, 179.899673, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000} REDWOOD COUNTY FIRE", 90, "Fixedsys", 20, 0, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(2631, -2288.880126, 2326.547851, 7.541372, -179.600021, -89.800125, 90.700088, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterial(tmpobjid, 0, 14779, "intring_gymint3", "star_spang", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14779, "intring_gymint3", "star_spang", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 5, 14779, "intring_gymint3", "star_spang", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 12, 14779, "intring_gymint3", "star_spang", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 15, 14779, "intring_gymint3", "star_spang", 0x00000000);
	tmpobjid = CreateDynamicObject(2260, -2290.671142, 2299.366455, 6.272068, 0.000000, 0.000000, -179.700302, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "flatdoor01_law", 0x00000000);
	tmpobjid = CreateDynamicObject(2273, -2291.652099, 2299.372802, 5.642063, 0.000000, 0.000000, -179.700302, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "flatdoor01_law", 0x00000000);
	tmpobjid = CreateDynamicObject(18066, -2298.347167, 2304.016845, 5.756395, 0.000000, 0.000000, 0.599999, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterial(tmpobjid, 0, 3786, "missiles_sfs", "ws_greyfoam", 0x00000000);
	tmpobjid = CreateDynamicObject(19466, -2298.183837, 2304.073486, 5.762983, 0.000000, 0.000000, -89.500251, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterialText(tmpobjid, 0, "{000000} FIRE CHIEF", 100, "Calibri", 20, 0, 0x00000000, 0x00000000, 1);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2310.697753, 3.246938, 0.000000, -0.099999, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2305.983154, 3.246730, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2312.689697, 3.246938, 0.000000, -0.099999, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2317.442626, 3.246938, 0.000000, -0.099999, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2319.424560, 3.246938, 0.000000, -0.099999, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(3578, -2289.400146, 2324.205322, 3.246938, 0.000000, -0.099999, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(11706, -2298.361816, 2334.478759, 3.972998, 0.000000, 0.000000, -129.599945, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2685, -2293.170654, 2330.666503, 5.693008, 0.000000, 0.000000, -89.999893, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19815, -2298.724365, 2322.026123, 5.802014, 0.000000, 0.000000, 90.400062, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19815, -2298.677734, 2315.229492, 5.802014, 0.000000, 0.000000, 90.400062, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19900, -2298.387207, 2321.706542, 3.977711, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19900, -2298.387207, 2322.537353, 3.977711, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19900, -2298.387207, 2315.782714, 3.977711, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19900, -2298.387207, 2314.941894, 3.977711, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19786, -2298.721679, 2308.404541, 5.541472, 0.000000, 0.000000, 90.199935, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1728, -2297.760253, 2310.043212, 4.021351, 0.000000, 0.000000, 0.799999, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1711, -2294.950927, 2308.544433, 4.032696, 0.000000, 0.000000, -88.300003, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2370, -2297.089355, 2307.827148, 3.755253, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2850, -2296.710937, 2308.710693, 4.633532, 0.000000, 0.000000, -160.400253, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2816, -2296.851562, 2307.854248, 4.594807, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2630, -2291.574951, 2325.570800, 4.022278, 0.000000, 0.000000, -1.199999, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2630, -2289.945800, 2325.506591, 4.022278, 0.000000, 0.000000, -1.199999, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2842, -2288.315917, 2325.032714, 4.001588, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2290.733398, 2309.135986, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2290.733398, 2314.781494, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2290.733398, 2321.526611, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2296.168701, 2321.526611, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2295.847900, 2314.781494, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2295.708007, 2309.135986, 9.917059, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19466, -2291.366943, 2303.921875, 5.116179, 0.000000, 0.000000, 88.999977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19466, -2293.608154, 2303.960449, 5.116179, 0.000000, 0.000000, 88.999977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19466, -2293.608154, 2303.960449, 7.046185, 0.000000, 0.000000, 88.999977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19466, -2291.366210, 2303.922119, 7.046185, 0.000000, 0.000000, 88.999977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2184, -2292.468505, 2302.610107, 4.032062, 0.000000, 0.000000, -88.499908, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1714, -2290.209228, 2301.541015, 4.032062, 0.000000, 0.000000, -88.699981, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1705, -2294.340087, 2302.326904, 4.036986, 0.000000, 0.000000, 65.899902, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1705, -2294.044677, 2299.870849, 4.036986, 0.000000, 0.000000, 112.699722, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2167, -2289.553955, 2303.163085, 4.032062, 0.000000, 0.000000, -89.999977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2202, -2297.354248, 2299.216308, 4.032062, 0.000000, 0.000000, 90.400070, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2002, -2290.152343, 2299.367187, 3.972061, 0.000000, 0.000000, 179.299499, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19893, -2291.831787, 2301.607910, 4.792067, 0.000000, 0.000000, 92.399925, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19807, -2291.759277, 2302.187255, 4.872066, 0.000000, 0.000000, 66.199958, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1665, -2291.580322, 2300.892822, 4.832074, 0.000000, 0.000000, 23.800004, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2855, -2292.190673, 2300.673583, 4.742068, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19835, -2291.941162, 2301.938232, 4.902064, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19942, -2291.672851, 2302.409179, 4.837103, -86.599906, 0.000000, 66.799957, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2611, -2297.819824, 2302.209228, 5.826985, 0.000000, 0.000000, 89.499977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19835, -2292.481689, 2302.348632, 4.902064, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19835, -2292.481689, 2300.807128, 4.902064, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1893, -2290.949462, 2328.952392, 8.112989, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2400, -2292.804199, 2327.635986, 3.993000, 0.000000, 0.000000, 90.099914, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(18934, -2292.263916, 2327.539550, 5.637690, -93.899932, -0.499999, 9.100015, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(18934, -2292.292236, 2328.112792, 5.628817, -93.899932, -0.499999, 9.100015, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(11745, -2292.572265, 2330.257080, 6.107914, 0.000000, 0.000000, 29.200006, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(11745, -2292.611083, 2327.618896, 6.107914, 0.000000, 0.000000, -13.099995, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(11745, -2292.602783, 2329.076416, 6.107914, 0.000000, 0.000000, -70.499984, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2399, -2292.629882, 2328.437255, 5.092995, 0.000000, 0.000000, 91.600028, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1814, -2290.858886, 2327.728515, 3.997914, 0.000000, 0.000000, -179.400085, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1814, -2289.107910, 2327.749511, 3.997914, 0.000000, 0.000000, -179.400085, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(930, -2288.363037, 2330.579101, 4.437921, 0.000000, 0.000000, 91.599998, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(930, -2288.326171, 2329.248046, 4.437921, 0.000000, 0.000000, 91.599998, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1778, -2288.094726, 2326.933349, 3.947913, 0.000000, 0.000000, -91.900054, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19622, -2288.184570, 2328.044677, 4.659658, 16.600002, 0.000000, 93.100013, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2690, -2289.422851, 2326.848388, 4.832770, -16.100004, 0.000000, 176.400070, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2690, -2289.833251, 2326.877197, 4.832770, -16.100004, 0.000000, 176.400070, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2690, -2290.253662, 2326.906982, 4.832770, -16.100004, 0.000000, 176.400070, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2969, -2291.728515, 2327.211914, 4.603008, 0.000000, 0.000000, -47.799964, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2969, -2291.018066, 2327.205078, 4.603008, 0.000000, 0.000000, -90.599861, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2969, -2291.318359, 2327.219726, 4.843011, 0.000000, 0.000000, 177.300262, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2368, -2285.175537, 2329.084228, 3.993000, 0.000000, 0.000000, -89.499870, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1706, -2285.354492, 2336.124023, 3.993000, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2368, -2285.175537, 2329.084228, 3.993000, 0.000000, 0.000000, -89.499870, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2161, -2286.494628, 2326.723876, 4.033000, 0.000000, 0.000000, 179.600036, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19893, -2285.396728, 2329.323974, 5.023008, 0.000000, 0.000000, -89.799903, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(1706, -2283.224365, 2335.044677, 3.993000, 0.000000, 0.000000, -89.899948, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2253, -2286.232421, 2336.362060, 4.763013, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2083, -2286.906982, 2336.592773, 3.991971, -0.099999, 0.000000, -88.299942, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19807, -2285.406250, 2328.944824, 5.093008, 0.000000, 0.000000, -124.499977, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2254, -2290.175781, 2336.605957, 6.733016, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(19835, -2285.334472, 2328.528564, 4.953016, 0.000000, 0.000000, 0.000000, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2894, -2286.596435, 2326.951416, 5.383012, 0.000000, 0.000000, -2.700022, -1, 0, -1, 100.00, 100.00, -1, -1);
	tmpobjid = CreateDynamicObject(2258, -2287.750976, 2329.016357, 6.692997, 0.000000, 0.000000, 90.099922, -1, 0, -1, 100.00, 100.00, -1, -1);
	SetDynamicObjectMaterial(tmpobjid, 0, 7525, "vgnfirestat", "starspangban1_256", 0x00000000);
	tmpobjid = CreateDynamicObject(1808, -2283.698974, 2326.883300, 3.993000, 0.000000, 0.000000, -180.000000, -1, 0, -1, 100.00, 100.00, -1, -1);

	CreateDynamicObject(-1630, -2298.30, 2330.745849, 4.308490, 0.000000, 0.000000, 89.400001, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (-1630) // Gym Bench Single
	CreateDynamicObject(11729, -2295.74, 2330.15, 3.98, 0.000000, 0.000000, 270.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (11729)
    CreateDynamicObject(11729, -2295.74, 2329.50, 3.98, 0.000000, 0.000000, 270.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (11729)
	CreateDynamicObject(11729, -2295.74, 2328.85, 3.98, 0.000000, 0.000000, 270.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (11729)
	CreateDynamicObject(11729, -2295.74, 2328.20, 3.98, 0.000000, 0.000000, 270.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (11729)
	CreateDynamicObject(11729, -2295.74, 2327.55, 3.98, 0.000000, 0.000000, 270.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (11729)
	CreateDynamicObject(14842, -2294.019775, 2328.927001, 5.763002, 0.000000, 0.000000, 180.0, -1, 0, -1, 100.00, 100.00, -1, -1); // Evelyn_Mercer (14842)
}

DestroyMap()
{
    if (IsValidObject(SubwayObject)) DestroyObject(SubwayObject);

	for (new i = 0; i < sizeof(BaseObjects); i ++)
	{
	    if (IsValidObject(BaseObjects[i])) DestroyObject(BaseObjects[i]);
	}
}

// Hooks

hook OnGameModeInit()
{
	for (new i = 0; i < MAX_PLAYERS; i ++)
	{
		if (!IsPlayerConnected(i) || IsPlayerNPC(i)) continue;
		
	    if (!GetPVarInt(i, "removedbuildings"))
	    {
	        RemoveBuildings(i);
	    }
	}
	CreateMap();
	print(" > Bayside Custom Map by Spooky loaded.");
    return true;
}

hook OnGameModeExit()
{
	DestroyMap();
	print(" > Bayside Custom Map by Spooky unloaded.");
    return true;
}

hook OnPlayerConnect(playerid)
{
    if(!IsPlayerNPC(playerid))
	{
        RemoveBuildings(playerid);
	}
    return true;
}