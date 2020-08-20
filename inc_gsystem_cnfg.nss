//::///////////////////////////////////////////////
//:: Name: inc_gsystem_cnfg
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configuration script which allows module
    builders to adjust PGS-related settings to their
    own personal tastes.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////

//****************************************************************************\\

//------------------------------------------------
//These 3 variables allow the module builder
//to choose his/her own filename for the
//databases that the Player Guild System will
//create and use.  These configureable variables
//were added to allow for compatibility with players
//who have more than one module with the Player
//Guild System installed.
//
//If you only plan to use only one module with the
//Player Guild System installed, then there is
//no need to edit these.
//------------------------------------------------
string PGS_MODULE_DATABASE_FILENAME = "PGS_Module_Info";
string PGS_PLAYER_DATABASE_FILENAME = "PGS_Player_Info";
string PGS_PERSISTENT_TIME_DATABASE_FILENAME = "PGS_Module_Time";
string PGS_TERRITORY_DATABASE_FILENAME = "PGS_Territory_Info";

//------------------------------------------------
//When set to TRUE, all entering players will be
//sent a message containing their current guild
//message.  If set to FALSE, guild messages will
//NOT be sent to entering players.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_DISPLAY_GUILD_MESSAGE_ON_ENTER = TRUE;

//------------------------------------------------
//When set to TRUE, all players who enter the
//module will be given a "Guild Journal" (unless
//of course they already have one).  Setting this
//to FALSE means players are NOT given a "Guild
//Journal", and that it then becomes you, the module
//builder's responsibility to hand them out
//accordingly.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_GIVE_GUILD_JOURNAL_ON_ENTER = TRUE;

//------------------------------------------------
//This variable, if set to FALSE, will remove the
//Guild Journal from a player's inventory if
//they are removed from the guild.  However, this
//will do nothing if Guild Journal's are given to
//players when they enter (rather pointless).
//
//NOTE: Guild Journals are automatically given
//to players who join a guild, so as they can
//perform guild-related actions.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_KEEP_GUILD_JOURNAL_AFTER_REMOVAL = TRUE;

//------------------------------------------------
//This value affects the guild list.  Players who
//have list filtering enabled will not be shown
//guilds who have fewer than X amount of members,
//where X corresponds to this value.
//
//Defaults to 5.
//------------------------------------------------
int PGS_GUILD_LIST_FILTERING_AMOUNT = 5;

//------------------------------------------------
//This variable is used as a check against players
//who are attempting to create a new guild.  Players
//whose charisma is not >= this value will not be
//allowed to create a guild.  If set to 0, charisma
//checks are not used when creating new guilds.
//
//Defaults to 0.
//------------------------------------------------
int PGS_GUILD_CREATION_CHARISMA_REQUIREMENT = 0;

//------------------------------------------------
//This variable servers the exact same purpose as
//that of the charisma requirement, except this is
//for a player's level.  If set to 0, player level
//checks will not be used when creating new guilds.
//
//Defaults to 0.
//------------------------------------------------
int PGS_GUILD_CREATION_LEVEL_REQUIREMENT = 0;

//------------------------------------------------
//The hostility delay is the delay before applying
//guild war faction changes.  When a guild war is
//declared, players from opposing guilds become
//hostile towards one-another.  This variable
//determines the delay before such faction changes
//are to occur.
//
//Defaults to 60.0f.
//------------------------------------------------
float PGS_FLOAT_HOSTILITY_DELAY = 60.0f;

//------------------------------------------------
//Interest is added to all guild accounts at the
//end of every month (28 game-time days).  This
//variable stores the interest rate percentage to
//be applied to each account.
//
//Example: 5.25% -> 1.0525f;
//
//To disable guild account interest, simply set
//this variable to 0.0f.
//
//NOTE: In order for monthly interest to be
//calculated, the Player Guild System implements
//persistent time.  This can be disabled, but
//if you want interest to be applied, it must be
//enabled.

//Defaults to 1.07f (7.00%).
//Defaults to TRUE.
//------------------------------------------------
float PGS_FLOAT_INTEREST_RATE = 1.07f;
int PGS_ENABLE_PERSISTENT_TIME = TRUE;

//------------------------------------------------
//The following four (4) variables have to deal
//with the guild ranking system.  Feel free to
//change the rank names as you see fit.
//
//Rank order goes from 4 (highest rank) to 1
//(lowest rank).
//------------------------------------------------
string PGS_STRING_GUILD_RANK4 = "Warlord";   /*Defaults to "Warlord"*/
string PGS_STRING_GUILD_RANK3 = "Champion";  /*Defaults to "Champion"*/
string PGS_STRING_GUILD_RANK2 = "Knight";    /*Defaults to "Knight"*/
string PGS_STRING_GUILD_RANK1 = "Footman";   /*Defaults to "Footman"*/

//------------------------------------------------
//Messenger creatures must remain a close enough
//distance to the player at all times.  The two
//variables below allow you to configure the
//distance for when the creatures are following,
//and when they are standing still.
//
//Follow distance defaults to 10.0f (one tile).
//Stand distance defaults to 20.0f (two tiles).
//------------------------------------------------
float PGS_MAX_MESSENGER_FOLLOW_DISTANCE = 10.0f;
float PGS_MAX_MESSENGER_STAND_DISTANCE = 20.0f;

//------------------------------------------------
//This variable is also for messenger creatures.
//Every heartbeat the distance between the player
//and the messenger creature is checked.  If
//out of bounds (specified above), a variable is
//incremented.  This variable defines the number
//of times that variable can be incremented before
//removing the messenger creature from being
//too far away.
//
//NOTE: If a messenger creature's distance is out
//of bounds and then returns, the variable count
//is reset.
//
//Defaults to 3 (or 18 seconds to be out of bounds).
//------------------------------------------------
int PGS_MESSENGER_HEARTBEAT_COUNT = 3;

//------------------------------------------------
//The two following variables have to deal with
//guild ranks.  When a fellow guild member is
//promoted/demoted, it can be customized to send
//or not to send guild notices informing the guild
//of what has taken place.
//
//Both default to TRUE.
//------------------------------------------------
int PGS_SEND_NOTICE_ON_PROMOTION = TRUE;
int PGS_SEND_NOTICE_ON_DEMOTION = TRUE;

//------------------------------------------------
//This variable will allow the module builder
//specify a limit for the maximum number of guilds
//he/she wishes to be active at any given time.
//If set to 0, there is no limit.  Any other number
//will specify the maximum amount of guilds allowed
//to be created.
//
//Defaults to 0.
//------------------------------------------------
int PGS_MAX_GUILD_COUNT = 0;

//------------------------------------------------
//As of version 3.1, the Vault Gnome NPC is now
//stand-alone.  This means module builders can
//place him down, and he will be able to perform
//related guild account actions.  If you want to
//disable players from creating a Vault Gnome
//through the "pgs_main" conversation, then set
//this variable to TRUE.
//
//Note: When setting to TRUE, it becomes your
//responsibility to adequately place Vault Gnomes
//in your module if you wish players to have
//access to their guild account.
//
//Defaults to FALSE.
//------------------------------------------------
int PGS_DISABLE_VAULT_GNOME_FROM_CONVO = FALSE;

//------------------------------------------------
//This variable is used by guild doors.  They will
//automatically re-close and lock themselves after
//this delay.  If you do not want these guild doors
//to auto-close, then simply set the value to 0.0f.
//
//Defaults to 10.0f.
//------------------------------------------------
float PGS_GUILD_DOOR_CLOSE_DELAY = 10.0f;

//------------------------------------------------
//At the end of every month, guild interest can
//be applied to guild accounts (configureable).
//The Player Guild System also allows for territories
//to add to the guild's account.  The value below
//specifies how much gold each territory is worth
//at the end of the month and applied to the guild
//account.
//
//If you do not want territories to add gold to
//guild accounts, then set this to 0.
//
//Defaults to 500.
//------------------------------------------------
int PGS_TERRITORY_GOLD_VALUE = 500;

//------------------------------------------------
//This variable is for claimable territories.  It
//allows the module builder to specify a limit
//for the number of claimable territories a guild
//can have at any one time.  If you would like to
//disable this limit, then simply set the variable
//to equal 0.
//
//Defaults to 3.
//------------------------------------------------
int PGS_GUILD_TERRITORY_LIMIT = 3;

//------------------------------------------------
//This variable is used with guild territories.
//This will allow you, the module builder, to
//enable or disable the option to list guild-
//claimed territories.  If you plan to NOT use
//claimable territories, then set this to FALSE.
//Otherwise, set it how you like.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_ENABLE_TERRITORY_LIST = TRUE;

//------------------------------------------------
//This variable is used for awardable experience.
//Guild leaders are the only ones who can tap
//into the guild pool, but they are also the only
//ones who cannot gain from it (i.e. a guild
//leader cannot award himself with XP from this
//pool).  Each month, Awardable XP amounts are
//calculated and dumped into guild pools.  To
//disable, set the value to 0.  Otherwise, XP
//is calculated like this:
//
//(# of members - 1) * value of this variable.
//
//Defaults to 200.
//------------------------------------------------
int PGS_XP_AWARD_PER_GUILD_MEMBER = 200;

//------------------------------------------------
//This variable is used in conjunction with the
//one above.  When set to TRUE, guild XP pools
//will rollover (i.e. any left from the previous
//month will remain).  Otherwise, when set to
//FALSE, all guild XP amounts will reset.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_XP_AWARD_ROLLOVER = TRUE;

//------------------------------------------------
//This variable determines whether or not players
//will have access to the player list via the
//"pgs_main" conversation.
//
//The player list will list all players whom are
//currently in a guild (PC name, and guild name).
//However, player's in private guilds will not be
//shown.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_ENABLE_PLAYER_LIST = TRUE;

//------------------------------------------------
//This option enables leaders to specify a color
//for his/her guild.  All members will have light
//color emitting from them.  Guilds can choose to
//not have a color, but this option will disable
//it completely for all guilds.
//
//Defaults to TRUE.
//------------------------------------------------
int PGS_ENABLE_GUILD_COLOR_LIGHTING = TRUE;

//------------------------------------------------
//The next four variables are associating with
//guild color lighting.  As the member count
//grows, the lighting effect applied to guild
//members gets bigger as well.  The variables below
//determine the member count needed for the light
//effect size.
//
//Example: Using the default values, a guild with
//a member count of 13 would fit into the size 3
//category.
//
//Note: SIZE4 should be > SIZE3, SIZE3 should
//be > SIZE2, etc...
//------------------------------------------------
int PGS_COLOR_LIGHTING_SIZE4 = 20;  /*Defaults to 20.*/
int PGS_COLOR_LIGHTING_SIZE3 = 10;  /*Defaults to 10.*/
int PGS_COLOR_LIGHTING_SIZE2 = 5;   /*Defaults to 5.*/
int PGS_COLOR_LIGHTING_SIZE1 = 1;   /*Defaults to 1.*/

//------------------------------------------------
//If enabled, players can have access to the Guild
//Journal conversation, but will be unable to
//create a new guild.  Instead, DMs can "assign"
//specific players access to create one.  This allows
//non-members access to configure their options,
//view lists, etc... w/o module builders having to
//worry about every player creating his/her own
//guild.
//
//Note: Even though a player may be granted access
//to create a guild, he must also pass any level
//and/or charisma checks set by the module builder.
//
//Defaults to FALSE.
//------------------------------------------------
int PGS_RESTRICT_GUILD_CREATION = FALSE;

//****************************************************************************\\
