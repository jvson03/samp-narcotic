// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Let's Load houses
    House_LoadData();
    return true;
}

hook OnGameModeExit()
{
    DestroyAllDynamicMapIcons();
	DestroyAllDynamic3DTextLabels();
	DestroyAllDynamicPickups();
    return true;
}
