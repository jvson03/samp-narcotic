// - Core Dependencies
#include <a_samp>
#include <fixes>

// - Dependencies
#include <a_mysql>
#include <streamer>
#include <sscanf2>
#include <samp_bcrypt>

// - Defines
#define CGEN_MEMORY 30000
#define YSI_NO_HEAP_MALLOC

// - Extra Dependencies
#include <YSI_Coding\y_inline>
#include <YSI_Extra\y_inline_bcrypt>
#include <YSI_Visual\y_dialog>
#include <YSI_Extra\y_inline_mysql>
#include <YSI_Coding\y_timers>
#include <YSI_Extra\y_inline_timers>
#include <YSI_Coding\y_va>
#include <YSI_Server\y_colours>
#include <YSI_Data\y_iterate>
#include <YSI_Players\y_groups>
#include <YSI_Visual\y_commands>
#include <YSI_Coding\y_timers>
#include <YSI_Data\y_bit>
#include <YSI_Core\y_utils>
#include <command-guess>
#include <mapfix>
#include <timestamp>
#include <UIC>
#include <Pawn.Regex>
#include <YSI_Coding\y_hooks>

main() {}

// Modules
#include ".\modules\chat\chat_core.pwn"
#include ".\modules\admin\admin_core.pwn"
#include ".\modules\sql\sql_core.pwn"
#include ".\modules\ban\ban_core.pwn"
#include ".\modules\user\user_core.pwn"
#include ".\modules\house\house_core.pwn"
#include ".\modules\vehicle\vehicle_core.pwn"
#include ".\modules\fuel\fuel_core.pwn"
#include ".\modules\hud\hud_core.pwn"
#include ".\modules\map\map_core.pwn"
#include ".\modules\mapper\mapper_core.pwn"