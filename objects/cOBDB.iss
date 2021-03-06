objectdef cOBDB inherits cBase
{
	variable collection:string UIErrMsgList
	variable collection:string GatherList
	variable collection:string HarvestableMobs
     
	method Initialize()
	{
		This.UIErrMsgList:Set[ERR_2HSKILLNOTFOUND,You can't dual-wield yet!]
		This.UIErrMsgList:Set[ERR_ABILITY_COOLDOWN,Ability is not ready yet.]
		This.UIErrMsgList:Set[ERR_ALREADY_IN_GROUP_S,${s} is already in a group.]
		This.UIErrMsgList:Set[ERR_ALREADY_IN_GUILD,You are already in a guild.]
		This.UIErrMsgList:Set[ERR_ALREADY_IN_GUILD_S,${s} is already in a guild.]
		This.UIErrMsgList:Set[ERR_ALREADY_INVITED_TO_GUILD_S,${s} has already been invited to a guild.]
		This.UIErrMsgList:Set[ERR_ALREADY_TRADING,You are already trading]
		This.UIErrMsgList:Set[ERR_AMMO_ONLY,Only ammo can go there.]
		This.UIErrMsgList:Set[ERR_ATTACK_CHARMED,Can't attack while charmed.]
		This.UIErrMsgList:Set[ERR_ATTACK_CONFUSED,Can't attack while confused.]
		This.UIErrMsgList:Set[ERR_ATTACK_DEAD,Can't attack while dead.]
		This.UIErrMsgList:Set[ERR_ATTACK_FLEEING,Can't attack while fleeing.]
		This.UIErrMsgList:Set[ERR_ATTACK_PACIFIED,Can't attack while pacified.]
		This.UIErrMsgList:Set[ERR_ATTACK_STUNNED,Can't attack while stunned.]
		This.UIErrMsgList:Set[ERR_AUCTION_BAG,You cannot sell a non-empty bag.]
		This.UIErrMsgList:Set[ERR_AUCTION_BID_INCREMENT,Your bid increment is too small.]
		This.UIErrMsgList:Set[ERR_AUCTION_BID_OWN,You cannot bid on your own auction.]
		This.UIErrMsgList:Set[ERR_AUCTION_BID_PLACED,Bid accepted.]
		This.UIErrMsgList:Set[ERR_AUCTION_BOUND_ITEM,You cannot sell a soulbound item.]
		This.UIErrMsgList:Set[ERR_AUCTION_CONJURED_ITEM,You cannot auction a conjured item.]
		This.UIErrMsgList:Set[ERR_AUCTION_DATABASE_ERROR,Internal auction error.]
		This.UIErrMsgList:Set[ERR_AUCTION_EXPIRED_S,Your auction of ${s} has expired.]
		This.UIErrMsgList:Set[ERR_AUCTION_HIGHER_BID,There is already a higher bid on that item.]
		This.UIErrMsgList:Set[ERR_AUCTION_LOOT_ITEM,You cannot auction a lootable item.]
		This.UIErrMsgList:Set[ERR_AUCTION_MIN_BID,You must meet the min bid.]
		This.UIErrMsgList:Set[ERR_AUCTION_OUTBID_S,You have been outbid on ${s}.]
		This.UIErrMsgList:Set[ERR_AUCTION_QUEST_ITEM,You cannot sell a quest item.]
		This.UIErrMsgList:Set[ERR_AUCTION_REMOVED_S,Your auction of ${s} has been cancelled by the seller.]
		This.UIErrMsgList:Set[ERR_AUCTION_REPAIR_ITEM,You must repair that item before you auction it.]
		This.UIErrMsgList:Set[ERR_AUCTION_SOLD_S,Your auction of ${s} sold.]
		This.UIErrMsgList:Set[ERR_AUCTION_STARTED,Auction created.]
		This.UIErrMsgList:Set[ERR_AUCTION_WON_S,You won an auction for ${s}]
		This.UIErrMsgList:Set[ERR_AUCTION_WRAPPED_ITEM,You cannot auction a wrapped item.]
		This.UIErrMsgList:Set[ERR_AUTOFOLLOW_TOO_FAR,Target is too far away.]
		This.UIErrMsgList:Set[ERR_AUTOLOOT_MONEY_S,You loot ${s}]
		This.UIErrMsgList:Set[ERR_BAD_PLAYER_NAME_S,Cannot find '${s}'.]
		This.UIErrMsgList:Set[ERR_BADATTACKFACING,You are facing the wrong way!]
		This.UIErrMsgList:Set[ERR_BADATTACKPOS,You are too far away!]
		This.UIErrMsgList:Set[ERR_BAG_FULL,That bag is full.]
		This.UIErrMsgList:Set[ERR_BAG_IN_BAG,Can't put non-empty bags in other bags.]
		This.UIErrMsgList:Set[ERR_BANK_FULL,Your bank is full]
		This.UIErrMsgList:Set[ERR_BANKSLOT_FAILED_TOO_MANY,You've reached your limit of bag slots!]
		This.UIErrMsgList:Set[ERR_BANKSLOT_INSUFFICIENT_FUNDS,You can't afford that.]
		This.UIErrMsgList:Set[ERR_BANKSLOT_NOTBANKER,That unit is not a banker!]
		This.UIErrMsgList:Set[ERR_BUTTON_LOCKED,That has already been used.]
		This.UIErrMsgList:Set[ERR_CANNOTCREATEDIRECTORY,Cannot create directory ${s}.]
		This.UIErrMsgList:Set[ERR_CANNOTCREATEFILE,Cannot create file ${s}.]
		This.UIErrMsgList:Set[ERR_CANT_EQUIP_EVER,You can never use that item.]
		This.UIErrMsgList:Set[ERR_CANT_EQUIP_LEVEL_I,You must reach level ${d} to use that item.]
		This.UIErrMsgList:Set[ERR_CANT_EQUIP_SKILL,You aren't skilled enough to use that item.]
		This.UIErrMsgList:Set[ERR_CANT_INTERACT_SHAPESHIFTED,Can't speak while shapeshifted.]
		This.UIErrMsgList:Set[ERR_CANT_STACK,This item cannot stack.]
		This.UIErrMsgList:Set[ERR_CANT_SWAP,These items can't be swapped.]
		This.UIErrMsgList:Set[ERR_CANT_USE_DISARMED,You cannot use an item that is disarmed.]
		This.UIErrMsgList:Set[ERR_CANT_USE_ITEM,You can't use that item.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_BAGS,Bags can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_BOUND,Bound items can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_EQUIPPED,Equipped items can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_STACKABLE,Stackable items can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_UNIQUE,Unique items can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CANT_WRAP_WRAPPED,Wrapped items can't be wrapped.]
		This.UIErrMsgList:Set[ERR_CHAT_PLAYER_NOT_FOUND_S,No player named '${s}' is currently playing.]
		This.UIErrMsgList:Set[ERR_CHAT_WHILE_DEAD,You can't chat when you're dead!]
		This.UIErrMsgList:Set[ERR_CHAT_WRONG_FACTION,You can only whisper to members of your alliance.]
		This.UIErrMsgList:Set[ERR_CHEST_IN_USE,That is already being used.]
		This.UIErrMsgList:Set[ERR_CLICK_ON_ITEM_TO_FEED,Click on an item to feed to your pet]
		This.UIErrMsgList:Set[ERR_CLIENT_LOCKED_OUT,You can't do that right now.]
		This.UIErrMsgList:Set[ERR_COMBAT_DAMAGE_SSI,${s} hits ${s} for ${d} damage!]
		This.UIErrMsgList:Set[ERR_COMMAND_NEEDS_TARGET,You must specify a target: /&lt;command&gt; &lt;target's name&gt;]
		This.UIErrMsgList:Set[ERR_DEATHBIND_SUCCESS_S,${s} is now your home.]
		This.UIErrMsgList:Set[ERR_DEATHBINDALREADYBOUND,You are already bound here!]
		This.UIErrMsgList:Set[ERR_DECLINE_GROUP_S,${s} declines your group invitation.]
		This.UIErrMsgList:Set[ERR_DESTROY_NONEMPTY_BAG,You can only do that with empty bags.]
		This.UIErrMsgList:Set[ERR_DISMOUNT_NOPET,INTERNAL ERROR, YOU DON'T HAVE A PET TO DISMOUNT]
		This.UIErrMsgList:Set[ERR_DISMOUNT_NOTMOUNTED,You're not mounted!]
		This.UIErrMsgList:Set[ERR_MOUNTED,You are mounted]
		This.UIErrMsgList:Set[ERR_CANTMOUNTHERE,You can't mount here]
		This.UIErrMsgList:Set[ERR_DISMOUNT_NOTYOURPET,INTERNAL ERROR, DISMOUNTING A NON-PET]
		This.UIErrMsgList:Set[ERR_DOOR_LOCKED,The door is locked.]
		This.UIErrMsgList:Set[ERR_DROP_BOUND_ITEM,You can't drop a soulbound item.]
		This.UIErrMsgList:Set[ERR_DUEL_CANCELLED,Duel cancelled.]
		This.UIErrMsgList:Set[ERR_DUEL_REQUESTED,You have requested a duel.]
		This.UIErrMsgList:Set[ERR_EMBLEMERROR_NOTABARDGEOSET,Change back to your normal form first!]
		This.UIErrMsgList:Set[ERR_EQUIP_TRADE_ITEM,That item is currently being traded]
		This.UIErrMsgList:Set[ERR_EXHAUSTION_EXHAUSTED,You feel exhausted.]
		This.UIErrMsgList:Set[ERR_EXHAUSTION_NORMAL,You feel normal.]
		This.UIErrMsgList:Set[ERR_EXHAUSTION_RESTED,You feel rested.]
		This.UIErrMsgList:Set[ERR_EXHAUSTION_TIRED,You feel tired.]
		This.UIErrMsgList:Set[ERR_EXHAUSTION_WELLRESTED,You feel well rested.]
		This.UIErrMsgList:Set[ERR_FEIGN_DEATH_RESISTED,Resisted]
		This.UIErrMsgList:Set[ERR_FISH_ESCAPED,Your fish got away!]
		This.UIErrMsgList:Set[ERR_FISH_NOT_HOOKED,No fish are hooked.]
		This.UIErrMsgList:Set[ERR_FOOD_COOLDOWN,You are too full to eat more now.]
		This.UIErrMsgList:Set[ERR_FRIEND_ADDED_S,${s} added to friends.]
		This.UIErrMsgList:Set[ERR_FRIEND_ALREADY_S,${s} is already your friend.]
		This.UIErrMsgList:Set[ERR_FRIEND_DB_ERROR,Friend lookup database error.]
		This.UIErrMsgList:Set[ERR_FRIEND_ERROR,Unknown friend response from server.]
		This.UIErrMsgList:Set[ERR_FRIEND_LIST_FULL,You don't have room for any more friends.]
		This.UIErrMsgList:Set[ERR_FRIEND_NOT_FOUND,Player not found.]
		This.UIErrMsgList:Set[ERR_FRIEND_OFFLINE_S,${s} has gone offline.]
		This.UIErrMsgList:Set[ERR_FRIEND_ONLINE_SS,Hplayer: ${s} has come online.]
		This.UIErrMsgList:Set[ERR_FRIEND_REMOVED_S,${s} removed from friends list.]
		This.UIErrMsgList:Set[ERR_FRIEND_SELF,You can't put yourself on your friend list.]
		This.UIErrMsgList:Set[ERR_FRIEND_WRONG_FACTION,Friends must be part of your alliance.]
		This.UIErrMsgList:Set[ERR_GENERIC_NO_TARGET,You have no target.]
		This.UIErrMsgList:Set[ERR_GENERIC_STUNNED,You are stunned]
		This.UIErrMsgList:Set[ERR_GROUP_DISBANDED,Your group has been disbanded.]
		This.UIErrMsgList:Set[ERR_GROUP_FULL,Your party is full.]
		This.UIErrMsgList:Set[ERR_GROUP_JOIN_BATTLEGROUND_FAIL,Your group has joined a battleground queue, but you are not eligible]
		This.UIErrMsgList:Set[ERR_GROUP_JOIN_BATTLEGROUND_S,Your group has joined the queue for ${s}]
		This.UIErrMsgList:Set[ERR_GROUP_JOIN_BATTLEGROUND_TOO_MANY,Your group is too big to join that battleground]
		This.UIErrMsgList:Set[ERR_GUILD_ACCEPT,You have joined the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_CREATE_S,${s} created.]
		This.UIErrMsgList:Set[ERR_GUILD_DECLINE_S,${s} declines your guild invitation.]
		This.UIErrMsgList:Set[ERR_GUILD_DEMOTE_SSS,${s} has demoted ${s} to ${s}.]
		This.UIErrMsgList:Set[ERR_GUILD_DISBAND_S,${s} has disbanded the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_DISBAND_SELF,You have disbanded the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_DISBANDED,Guild has been disbanded.]
		This.UIErrMsgList:Set[ERR_GUILD_ENTER_NAME,Enter a name for your guild.]
		This.UIErrMsgList:Set[ERR_GUILD_FOUNDER_S,Congratulations, you are a founding member of ${s}!]
		This.UIErrMsgList:Set[ERR_GUILD_INTERNAL,Internal guild error.]
		This.UIErrMsgList:Set[ERR_GUILD_INVITE_S,You have invited ${s} to join your guild.]
		This.UIErrMsgList:Set[ERR_GUILD_JOIN_S,${s} has joined the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_LEADER_CHANGED_SS,${s} has made ${s} the new Guild Master.]
		This.UIErrMsgList:Set[ERR_GUILD_LEADER_IS_S,${s} is the leader of your guild.]
		This.UIErrMsgList:Set[ERR_GUILD_LEADER_LEAVE,You must promote a new Guild Master using /gleader before leaving the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_LEADER_S,${s} has been promoted to Guild Master.]
		This.UIErrMsgList:Set[ERR_GUILD_LEADER_SELF,You are now the Guild Master.]
		This.UIErrMsgList:Set[ERR_GUILD_LEAVE_S,${s} has left the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_EXISTS_S,There is already a guild named ${s}.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_INVALID,That name contains invalid characters, Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_INVALID_SPACE,Guild names cannot start or end with a space. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_MIXED_LANGUAGES,Names must use one language. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_NAME_CONSECUTIVE_SPACES,Consecutive spaces are not allowed. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_PROFANE,That name is profane. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_RESERVED,That name is reserved. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NAME_TOO_SHORT,That name is too short. Enter a new name.]
		This.UIErrMsgList:Set[ERR_GUILD_NOT_ALLIED,You cannot invite players from the opposing alliance into your guild]
		This.UIErrMsgList:Set[ERR_GUILD_PERMISSIONS,You don't have permission to do that.]
		This.UIErrMsgList:Set[ERR_GUILD_PLAYER_NOT_FOUND_S,${s} not found.]
		This.UIErrMsgList:Set[ERR_GUILD_PLAYER_NOT_IN_GUILD,You are not in a guild.]
		This.UIErrMsgList:Set[ERR_GUILD_PLAYER_NOT_IN_GUILD_S,${s} is not in your guild.]
		This.UIErrMsgList:Set[ERR_GUILD_PROMOTE_SSS,${s} has promoted ${s} to ${s}.]
		This.UIErrMsgList:Set[ERR_GUILD_QUIT_S,You are no longer a member of ${s}.]
		This.UIErrMsgList:Set[ERR_GUILD_RANK_IN_USE,That guild rank is currently in use.]
		This.UIErrMsgList:Set[ERR_GUILD_RANK_TOO_HIGH_S,${s}'s rank is too high]
		This.UIErrMsgList:Set[ERR_GUILD_RANK_TOO_LOW_S,${s} is already at the lowest rank]
		This.UIErrMsgList:Set[ERR_GUILD_RANKS_LOCKED,Temporary guild error. Please try again!]
		This.UIErrMsgList:Set[ERR_GUILD_REMOVE_SELF,You have been kicked out of the guild.]
		This.UIErrMsgList:Set[ERR_GUILD_REMOVE_SS,${s} has been kicked out of the guild by ${s}.]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_INVALID_TABARD_COLORS,Invalid Guild Emblem colors.]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_INVALIDVENDOR,That's not an emblem vendor!]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_NOGUILD,You are not part of a guild!]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_NOTENOUGHMONEY,You can't afford to do that.]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_NOTGUILDMASTER,Only guild leaders can create emblems.]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_SAME,Not saved, your tabard is already like that.]
		This.UIErrMsgList:Set[ERR_GUILDEMBLEM_SUCCESS,Guild Emblem saved.]
		This.UIErrMsgList:Set[ERR_IGNORE_ADDED_S,${s} is now being ignored.]
		This.UIErrMsgList:Set[ERR_IGNORE_ALREADY_S,${s} is already being ignored.]
		This.UIErrMsgList:Set[ERR_IGNORE_FULL,You can't ignore any more players.]
		This.UIErrMsgList:Set[ERR_IGNORE_NOT_FOUND,Player not found.]
		This.UIErrMsgList:Set[ERR_IGNORE_REMOVED_S,${s} is no longer being ignored.]
		This.UIErrMsgList:Set[ERR_IGNORE_SELF,You can't ignore yourself.]
		This.UIErrMsgList:Set[ERR_IGNORING_YOU_S,${s} is ignoring you.]
		This.UIErrMsgList:Set[ERR_INITIATE_TRADE_S,You have requested to trade with ${s}.]
		This.UIErrMsgList:Set[ERR_INSPECT_S,${s} is inspecting you.]
		This.UIErrMsgList:Set[ERR_INV_FULL,Inventory is full.]
		This.UIErrMsgList:Set[ERR_INVALID_ATTACK_TARGET,You cannot attack that target.]
		This.UIErrMsgList:Set[ERR_INVALID_FOLLOW_TARGET,You can't follow that unit.]
		This.UIErrMsgList:Set[ERR_INVALID_ITEM_TARGET,That item is not a valid target.]
		This.UIErrMsgList:Set[ERR_INVALID_PETNAME,Error, invalid name entered.]
		This.UIErrMsgList:Set[ERR_INVITE_PLAYER_S,You have invited ${s} to join your group.]
		This.UIErrMsgList:Set[ERR_INVITE_SELF,You can't invite yourself to a group.]
		This.UIErrMsgList:Set[ERR_INVITED_TO_GROUP_S,${s} has invited you to join a group.]
		This.UIErrMsgList:Set[ERR_INVITED_TO_GUILD,You have already been invited into a guild.]
		This.UIErrMsgList:Set[ERR_INVITED_TO_GUILD_SS,${s} invites you join ${s}.]
		This.UIErrMsgList:Set[ERR_ITEM_CANT_BE_DESTROYED,That item cannot be destroyed.]
		This.UIErrMsgList:Set[ERR_ITEM_COOLDOWN,Item is not ready yet.]
		This.UIErrMsgList:Set[ERR_ITEM_LOCKED,Item is locked.]
		This.UIErrMsgList:Set[ERR_ITEM_MAX_COUNT,You can't carry any more of those items.]
		This.UIErrMsgList:Set[ERR_ITEM_NOT_FOUND,The item was not found.]
		This.UIErrMsgList:Set[ERR_JOINED_GROUP_S,${s} joins the party.]
		This.UIErrMsgList:Set[ERR_KILLED_BY_S,${s} has slain you.]
		This.UIErrMsgList:Set[ERR_LEARN_ABILITY_S,You have learned a new ability: ${s}.]
		This.UIErrMsgList:Set[ERR_LEARN_RECIPE_S,You have learned how to create a new item: ${s}.]
		This.UIErrMsgList:Set[ERR_LEARN_SPELL_S,You have learned a new spell: ${s}.]
		This.UIErrMsgList:Set[ERR_LEFT_GROUP_S,${s} leaves the party.]
		This.UIErrMsgList:Set[ERR_LEFT_GROUP_YOU,You leave the group.]
		This.UIErrMsgList:Set[ERR_LOGGING_OUT,You are logging out]
		This.UIErrMsgList:Set[ERR_LOGOUT_FAILED,You can't logout now.]
		This.UIErrMsgList:Set[ERR_LOOT_BAD_FACING,You must be facing the corpse to loot it.]
		This.UIErrMsgList:Set[ERR_LOOT_DIDNT_KILL,You don't have permission to loot that corpse.]
		This.UIErrMsgList:Set[ERR_LOOT_GONE,Already looted]
		This.UIErrMsgList:Set[ERR_LOOT_LOCKED,Someone is already looting that corpse.]
		This.UIErrMsgList:Set[ERR_LOOT_NO_UI,You can't loot right now.]
		This.UIErrMsgList:Set[ERR_LOOT_NOTSTANDING,You need to be standing up to loot something!]
		This.UIErrMsgList:Set[ERR_LOOT_PLAYER_NOT_FOUND,Player not found]
		This.UIErrMsgList:Set[ERR_LOOT_ROLL_PENDING,That item is still being rolled for]
		This.UIErrMsgList:Set[ERR_LOOT_STUNNED,You can't loot anything while stunned!]
		This.UIErrMsgList:Set[ERR_LOOT_TOO_FAR,You are too far away to loot that corpse.]
		This.UIErrMsgList:Set[ERR_LOOT_WHILE_INVULNERABLE,Cannot loot while invulnerable.]
		This.UIErrMsgList:Set[ERR_MAIL_BAG,You can't mail non-empty bags.]
		This.UIErrMsgList:Set[ERR_MAIL_BOUND_ITEM,You can't mail soulbound items.]
		This.UIErrMsgList:Set[ERR_MAIL_CONJURED_ITEM,You cannot mail conjured items]
		This.UIErrMsgList:Set[ERR_MAIL_DATABASE_ERROR,Internal mail database error.]
		This.UIErrMsgList:Set[ERR_MAIL_QUEST_ITEM,You can't mail quest items.]
		This.UIErrMsgList:Set[ERR_MAIL_SENT,Mail sent.]
		This.UIErrMsgList:Set[ERR_MAIL_TARGET_NOT_FOUND,Cannot find mail recipient.]
		This.UIErrMsgList:Set[ERR_MAIL_TO_SELF,You can't send mail to yourself.]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_GROUP_FULL,You are already in a full group]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_IN_PROGRESS,You are still seeking more members through the meeting stone.]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_IN_QUEUE_S,You are now in the queue to join a party for ${s}.]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_INVALID_LEVEL,You do not meet the level requirements of this meeting stone.]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_MEMBER_ADDED_S,${s} has been added to the group by the meeting stone.]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_MUST_BE_LEADER,You must be the party leader to interact with the meeting stone]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_NO_RAID_GROUP,You cannot use a meeting stone while in a raid group]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_NOT_LEADER,Only the party leader can leave the meeting stone queue]
		This.UIErrMsgList:Set[ERR_MEETING_STONE_SUCCESS,Your group is complete, you have left the meeting stone queue.]
		This.UIErrMsgList:Set[ERR_MOUNT_ALREADYMOUNTED,You're already mounted!]
		This.UIErrMsgList:Set[ERR_MOUNT_FORCEDDISMOUNT,You dismount before continuing.]
		This.UIErrMsgList:Set[ERR_MOUNT_INVALIDMOUNTEE,You can't mount that unit!]
		This.UIErrMsgList:Set[ERR_MOUNT_LOOTING,You can't mount while looting!]
		This.UIErrMsgList:Set[ERR_MOUNT_NOTMOUNTABLE,That unit can't be mounted!]
		This.UIErrMsgList:Set[ERR_MOUNT_NOTYOURPET,That mount isn't your pet!]
		This.UIErrMsgList:Set[ERR_MOUNT_OTHER,UNKNOWN MOUNT ERROR]
		This.UIErrMsgList:Set[ERR_MOUNT_RACECANTMOUNT,You can't mount because of your race!]
		This.UIErrMsgList:Set[ERR_MOUNT_SHAPESHIFTED,You can't mount while shapeshifted!]
		This.UIErrMsgList:Set[ERR_MOUNT_TOOFARAWAY,That mount is too far away!]
		This.UIErrMsgList:Set[ERR_MUST_EQUIP_ITEM,You must equip that item to use it.]
		This.UIErrMsgList:Set[ERR_MUST_REPAIR_DURABILITY,You must repair that item's durability to use it.]
		This.UIErrMsgList:Set[ERR_NEW_LEADER_S,${s} is now the group leader.]
		This.UIErrMsgList:Set[ERR_NEW_LEADER_YOU,You are now the group leader.]
		This.UIErrMsgList:Set[ERR_NEW_LOOT_MASTER_S,${s} is now the loot master.]
		This.UIErrMsgList:Set[ERR_NEWTAXIPATH,New flight path discovered!]
		This.UIErrMsgList:Set[ERR_NO_ATTACK_TARGET,There is nothing to attack.]
		This.UIErrMsgList:Set[ERR_NO_BANK_HERE,You are too far away from a bank.]
		This.UIErrMsgList:Set[ERR_NO_BANK_SLOT,You must purchase that bag slot first]
		This.UIErrMsgList:Set[ERR_NO_GUILD_CHARTER,You don't have a guild charter.]
		This.UIErrMsgList:Set[ERR_NO_ITEMS_WHILE_SHAPESHIFTED,Can't use items while shapeshifted.]
		This.UIErrMsgList:Set[ERR_NO_PET,You don't have a pet!]
		This.UIErrMsgList:Set[ERR_NO_REPLY_TARGET,You have nobody to reply to yet.]
		This.UIErrMsgList:Set[ERR_NO_SLOT_AVAILABLE,No equipment slot is available for that item.]
		This.UIErrMsgList:Set[ERR_NOAMMO_S,${s}]
		This.UIErrMsgList:Set[ERR_NOEMOTEWHILERUNNING,You can't do that while moving!]
		This.UIErrMsgList:Set[ERR_NOT_A_BAG,Not a bag.]
		This.UIErrMsgList:Set[ERR_NOT_ENOUGH_MONEY,You don't have enough money.]
		This.UIErrMsgList:Set[ERR_NOT_EQUIPPABLE,This item cannot be equipped.]
		This.UIErrMsgList:Set[ERR_NOT_IN_COMBAT,You can't do that while in combat]
		This.UIErrMsgList:Set[ERR_NOT_IN_GROUP,You aren't in a party.]
		This.UIErrMsgList:Set[ERR_NOT_IN_RAID,You are not in a raid group]
		This.UIErrMsgList:Set[ERR_NOT_LEADER,You are not the party leader.]
		This.UIErrMsgList:Set[ERR_NOT_OWNER,You don't own that item.]
		This.UIErrMsgList:Set[ERR_NOT_WHILE_SHAPESHIFTED,You can't do that while shapeshifted.]
		This.UIErrMsgList:Set[ERR_NOTYOURPET,That is not your pet!]
		This.UIErrMsgList:Set[ERR_NULL_PETNAME,Error, empty pet name entered.]
		This.UIErrMsgList:Set[ERR_OBJECT_IS_BUSY,That object is busy.]
		This.UIErrMsgList:Set[ERR_ONLY_ONE_AMMO,You can only equip one ammo pouch.]
		This.UIErrMsgList:Set[ERR_ONLY_ONE_BOLT,You can only equip one quiver.]
		This.UIErrMsgList:Set[ERR_ONLY_ONE_QUIVER,You can only equip one quiver.]
		This.UIErrMsgList:Set[ERR_OUT_OF_ENERGY,Not enough energy]
		This.UIErrMsgList:Set[ERR_OUT_OF_FOCUS,Not enough focus]
		This.UIErrMsgList:Set[ERR_OUT_OF_HEALTH,Not enough health]
		This.UIErrMsgList:Set[ERR_OUT_OF_MANA,Not enough mana]
		This.UIErrMsgList:Set[ERR_OUT_OF_RAGE,Not enough rage]
		This.UIErrMsgList:Set[ERR_OUT_OF_RANGE,Out of range.]
		This.UIErrMsgList:Set[ERR_PASSIVE_ABILITY,You can't put a passive ability in the action bar.]
		This.UIErrMsgList:Set[ERR_PET_BROKEN,Your pet has run away]
		This.UIErrMsgList:Set[ERR_PET_NOT_RENAMEABLE,Your pet can't be renamed.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_AFFECTING_COMBAT,Your pet is in combat.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_ALREADY_KNOWN_S,Your pet already knows ${s}.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_DEAD,Your pet is dead.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_NOT_BEHIND,Your pet must be behind its target.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_OUT_OF_RANGE,Your pet is out of range.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_ROOTED,Your pet is unable to move.]
		This.UIErrMsgList:Set[ERR_PET_SPELL_TARGETS_DEAD,Your pet's target is dead.]
		This.UIErrMsgList:Set[ERR_PETITION_ALREADY_SIGNED,You have already signed that guild charter.]
		This.UIErrMsgList:Set[ERR_PETITION_CREATOR,You can't sign your own guild charter.]
		This.UIErrMsgList:Set[ERR_PETITION_DECLINED_S,${s} has declined your guild invitation.]
		This.UIErrMsgList:Set[ERR_PETITION_IN_GUILD,You are already in a guild.]
		This.UIErrMsgList:Set[ERR_PETITION_NOT_ENOUGH_SIGNATURES,You need more signatures.]
		This.UIErrMsgList:Set[ERR_PETITION_OFFERED_S,You have requested ${s}'s signature.]
		This.UIErrMsgList:Set[ERR_PETITION_SIGNED,Guild charter signed.]
		This.UIErrMsgList:Set[ERR_PETITION_SIGNED_S,${s} has signed your guild charter.]
		This.UIErrMsgList:Set[ERR_PLAYER_BUSY_S,${s} is busy right now.]
		This.UIErrMsgList:Set[ERR_PLAYER_DEAD,You can't do that when you're dead.]
		This.UIErrMsgList:Set[ERR_PLAYER_DIED_S,${s} has died.]
		This.UIErrMsgList:Set[ERR_PLAYER_WRONG_FACTION,Target is not part of your alliance.]
		This.UIErrMsgList:Set[ERR_POTION_COOLDOWN,You cannot drink any more yet.]
		This.UIErrMsgList:Set[ERR_PROFICIENCY_GAINED_S,You have gained ${s} proficiency]
		This.UIErrMsgList:Set[ERR_PROFICIENCY_NEEDED,You do not have the required proficiency for that item.]
		This.UIErrMsgList:Set[ERR_PVP_TOGGLE_OFF,PvP combat toggled off]
		This.UIErrMsgList:Set[ERR_PVP_TOGGLE_ON,PvP combat toggled on]
		This.UIErrMsgList:Set[ERR_QUEST_ACCEPTED_S,Quest accepted: ${s}]
		This.UIErrMsgList:Set[ERR_QUEST_ADD_FOUND_SII,${s}: ${d}/${d}]
		This.UIErrMsgList:Set[ERR_QUEST_ADD_ITEM_SII,${s}: ${d}/${d}]
		This.UIErrMsgList:Set[ERR_QUEST_ADD_KILL_SII,${s} slain: ${d}/${d}]
		This.UIErrMsgList:Set[ERR_QUEST_ALREADY_ON,You are already on that quest]
		This.UIErrMsgList:Set[ERR_QUEST_COMPLETE_S,${s} completed.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_BAG_FULL_S,${s} failed: Inventory is full.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_LOW_LEVEL,You are not high enough level for that quest.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_MAX_COUNT_S,${s} failed: Duplicate item found.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_MISSING_ITEMS,You don't have the required items with you. Check storage.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_NOT_ENOUGH_MONEY,You don't have enough money for that quest]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_S,${s} failed.]
		This.UIErrMsgList:Set[ERR_QUEST_FAILED_WRONG_RACE,That quest is not available to your race]
		This.UIErrMsgList:Set[ERR_QUEST_LOG_FULL,Your quest log is full.]
		This.UIErrMsgList:Set[ERR_QUEST_MUST_CHOOSE,You must choose a reward.]
		This.UIErrMsgList:Set[ERR_QUEST_NEED_PREREQS,You don't meet the requirements for that quest]
		This.UIErrMsgList:Set[ERR_QUEST_OBJECTIVE_COMPLETE_S,${s} (Complete)]
		This.UIErrMsgList:Set[ERR_QUEST_ONLY_ONE_TIMED,You can only be on one timed quest at a time]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_ACCEPTED_S,${s} has accepted your quest]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_ALREADY_DONE_S,${s} has completed that quest]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_BUSY_S,${s} is busy]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_DECLINED_S,${s} has declined your quest]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_INVALID_S,${s} is not eligible for that quest]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_LOG_FULL_S,${s}'s quest log is full]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_ONQUEST_S,${s} is already on that quest]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_SUCCESS_S,Sharing quest with ${s}...]
		This.UIErrMsgList:Set[ERR_QUEST_PUSH_TOO_FAR_S,${s} is too far away to receive your quest]
		This.UIErrMsgList:Set[ERR_QUEST_REWARD_EXP_I,Experience gained: ${d}.]
		This.UIErrMsgList:Set[ERR_QUEST_REWARD_ITEM_S,Received item: ${s}.]
		This.UIErrMsgList:Set[ERR_QUEST_REWARD_MONEY_S,Received ${s}.]
		This.UIErrMsgList:Set[ERR_QUEST_UNKNOWN_COMPLETE,Objective Complete.]
		This.UIErrMsgList:Set[ERR_RAID_GROUP_FULL,The instance is full]
		This.UIErrMsgList:Set[ERR_RAID_GROUP_ONLY,You must be in a raid group to enter this instance]
		This.UIErrMsgList:Set[ERR_RAID_MEMBER_ADDED_S,${s} has joined the raid group]
		This.UIErrMsgList:Set[ERR_RAID_MEMBER_REMOVED_S,${s} has left the raid group]
		This.UIErrMsgList:Set[ERR_RAID_YOU_JOINED,You have joined a raid group]
		This.UIErrMsgList:Set[ERR_RAID_YOU_LEFT,You have left the raid group]
		This.UIErrMsgList:Set[ERR_RECEIVE_ITEM_S,${s} received.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_FREEFORALL,Looting changed to free-for-all.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_GROUP,Looting changed to group loot.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_MASTER,Looting changed to master looter.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_NBG,Looting set to need before greed.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_ROUNDROBIN,Looting changed to round robin.]
		This.UIErrMsgList:Set[ERR_SET_LOOT_THRESHOLD_S,Loot threshold set to ${s}]
		This.UIErrMsgList:Set[ERR_SKILL_GAINED_S,You have gained the ${s} skill.]
		This.UIErrMsgList:Set[ERR_SKILL_UP_SI,Your skill in ${s} has increased to ${d}.]
		This.UIErrMsgList:Set[ERR_SLOT_EMPTY,That slot is empty.]
		This.UIErrMsgList:Set[ERR_SPECIFY_MASTER_LOOTER,You must specify a loot master.]
		This.UIErrMsgList:Set[ERR_SPELL_ALREADY_KNOWN_S,You already know ${s}.]
		This.UIErrMsgList:Set[ERR_SPELL_COOLDOWN,Spell is not ready yet.]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_ALREADY_AT_FULL_HEALTH,You are already at full health.]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_ALREADY_AT_FULL_POWER_S,You are already at full ${s}.]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_EQUIPPED_ITEM,Must have the proper item equipped]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_EQUIPPED_ITEM_CLASS_S,${s}]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_NOTUNSHEATHED,You have to be unsheathed to do that!]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_REAGENTS,${s}]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_S,${s}]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_SHAPESHIFT_FORM_S,${s}]
		This.UIErrMsgList:Set[ERR_SPELL_FAILED_TOTEMS,${s}]
		This.UIErrMsgList:Set[ERR_SPELL_OUT_OF_RANGE,Out of range.]
		This.UIErrMsgList:Set[ERR_SPELL_UNLEARNED_S,You have unlearned ${s}.]
		This.UIErrMsgList:Set[ERR_SPLIT_FAILED,Couldn't split those items.]
		This.UIErrMsgList:Set[ERR_TALENT_WIPE_ERROR,You have not spent any talent points]
		This.UIErrMsgList:Set[ERR_TAME_FAILED,${s}.]
		This.UIErrMsgList:Set[ERR_TARGET_LOGGING_OUT,That player is logging out]
		This.UIErrMsgList:Set[ERR_TARGET_NOT_IN_GROUP_S,${s} is not in your party.]
		This.UIErrMsgList:Set[ERR_TARGET_STUNNED,Target is stunned]
		This.UIErrMsgList:Set[ERR_TAXINOPATHS,You don??t know any flight locations connected to this one.]
		This.UIErrMsgList:Set[ERR_TAXINOSUCHPATH,There is no direct path to that destination!]
		This.UIErrMsgList:Set[ERR_TAXINOTENOUGHMONEY,You don't have enough money!]
		This.UIErrMsgList:Set[ERR_TAXINOTSTANDING,You need to be standing to go anywhere.]
		This.UIErrMsgList:Set[ERR_TAXINOTVISITED,You haven't reached that taxi node on foot yet!]
		This.UIErrMsgList:Set[ERR_TAXINOVENDORNEARBY,There is no taxi vendor nearby!]
		This.UIErrMsgList:Set[ERR_TAXIPLAYERALREADYMOUNTED,You are already mounted! Dismount first.]
		This.UIErrMsgList:Set[ERR_TAXIPLAYERBUSY,You are busy and can't use the taxi service now.]
		This.UIErrMsgList:Set[ERR_TAXIPLAYERMOVING,You are moving.]
		This.UIErrMsgList:Set[ERR_TAXIPLAYERSHAPESHIFTED,You can't take a taxi while disguised!]
		This.UIErrMsgList:Set[ERR_TAXISAMENODE,You are already there!]
		This.UIErrMsgList:Set[ERR_TAXITOOFARAWAY,You are too far away from the taxi stand!]
		This.UIErrMsgList:Set[ERR_TAXIUNSPECIFIEDSERVERERROR,UNSPECIFIED TAXI SERVER ERROR]
		This.UIErrMsgList:Set[ERR_TICKET_ALREADY_EXISTS,You already have a GM ticket.]
		This.UIErrMsgList:Set[ERR_TICKET_CREATE_ERROR,Error creating GM ticket.]
		This.UIErrMsgList:Set[ERR_TICKET_DB_ERROR,Error retrieving GM ticket.]
		This.UIErrMsgList:Set[ERR_TICKET_NO_TEXT,You must enter text for your ticket.]
		This.UIErrMsgList:Set[ERR_TICKET_UPDATE_ERROR,Error updating GM ticket.]
		This.UIErrMsgList:Set[ERR_TOO_FEW_TO_SPLIT,Tried to split more than number in stack.]
		This.UIErrMsgList:Set[ERR_TOO_MANY_CHAT_CHANNELS,You can only be in 10 channels at a time]
		This.UIErrMsgList:Set[ERR_TOOBUSYTOFOLLOW,You're too busy to follow anything!]
		This.UIErrMsgList:Set[ERR_TRADE_BAG,You can't trade non-empty bags.]
		This.UIErrMsgList:Set[ERR_TRADE_BAG_FULL,Trade failed, you don't have enough space.]
		This.UIErrMsgList:Set[ERR_TRADE_BLOCKED_S,${s} has requested to trade. You have refused.]
		This.UIErrMsgList:Set[ERR_TRADE_BOUND_ITEM,You can't trade a soulbound item.]
		This.UIErrMsgList:Set[ERR_TRADE_CANCELLED,Trade cancelled.]
		This.UIErrMsgList:Set[ERR_TRADE_COMPLETE,Trade complete.]
		This.UIErrMsgList:Set[ERR_TRADE_GROUND_ITEM,You can't trade an item from the ground.]
		This.UIErrMsgList:Set[ERR_TRADE_MAX_COUNT_EXCEEDED,You have too many of a unique item.]
		This.UIErrMsgList:Set[ERR_TRADE_QUEST_ITEM,You can't trade a quest item.]
		This.UIErrMsgList:Set[ERR_TRADE_REQUEST_S,${s} has requested to trade with you.]
		This.UIErrMsgList:Set[ERR_TRADE_TARGET_BAG_FULL,Trade failed, target doesn't have enough space.]
		This.UIErrMsgList:Set[ERR_TRADE_TARGET_DEAD,You can't trade with dead players.]
		This.UIErrMsgList:Set[ERR_TRADE_TARGET_MAX_COUNT_EXCEEDED,Your trade partner has too many of a unique item.]
		This.UIErrMsgList:Set[ERR_TRADE_TOO_FAR,Trade target is too far away.]
		This.UIErrMsgList:Set[ERR_UNINVITE_YOU,You have been removed from the group.]
		This.UIErrMsgList:Set[ERR_UNIT_NOT_FOUND,Unknown unit.]
		This.UIErrMsgList:Set[ERR_USE_BAD_ANGLE,You aren't facing the right angle!]
		This.UIErrMsgList:Set[ERR_USE_CANT_IMMUNE,You cannot use that while you are immune.]
		This.UIErrMsgList:Set[ERR_USE_CANT_OPEN,You can't open that.]
		This.UIErrMsgList:Set[ERR_USE_DESTROYED,That is destroyed.]
		This.UIErrMsgList:Set[ERR_USE_LOCKED,Item is locked.]
		This.UIErrMsgList:Set[ERR_USE_LOCKED_WITH_ITEM_S,Requires ${s}]
		This.UIErrMsgList:Set[ERR_USE_LOCKED_WITH_SPELL_KNOWN_SI,Requires ${s} ${d}]
		This.UIErrMsgList:Set[ERR_USE_LOCKED_WITH_SPELL_S,Requires ${s}]
		This.UIErrMsgList:Set[ERR_USE_OBJECT_MOVING,Object is in motion.]
		This.UIErrMsgList:Set[ERR_USE_SPELL_FOCUS,Object is a spell focus.]
		This.UIErrMsgList:Set[ERR_USE_TOO_FAR,You are too far away.]
		This.UIErrMsgList:Set[ERR_VENDOR_HATES_YOU,That merchant doesn't like you.]
		This.UIErrMsgList:Set[ERR_VENDOR_NOT_INTERESTED,The merchant doesn't want that item.]
		This.UIErrMsgList:Set[ERR_VENDOR_SOLD_OUT,That item is currently sold out.]
		This.UIErrMsgList:Set[ERR_VENDOR_TOO_FAR,You are too far away.]
		This.UIErrMsgList:Set[ERR_WRONG_BAG_TYPE,That item doesn't go in that bag.]
		This.UIErrMsgList:Set[ERR_WRONG_BAG_TYPE_SUBCLASS,Only ${s}s can be placed in that.]
		This.UIErrMsgList:Set[ERR_WRONG_SLOT,That item does not go in that slot.]
		This.UIErrMsgList:Set[ERR_ZONE_EXPLORED,Discovered: ${s}]
		This.UIErrMsgList:Set[ERR_ZONE_EXPLORED_XP,Discovered ${s}: ${d} experience gained]
		This.UIErrMsgList:Set[ERR_SKINNING_TOO_LOW,Requires Skinning ] 
		
		This.GatherList:Set[Peacebloom,HERBALISM:1:25:50:100]
		This.GatherList:Set[Silverleaf,HERBALISM:1:25:50:100]
		This.GatherList:Set[Earthroot,HERBALISM:15:40:70:115]
		This.GatherList:Set[Mageroyal,HERBALISM:50:75:100:150]
		This.GatherList:Set[Briarthorn,HERBALISM:70:95:120:170]
		This.GatherList:Set[Stranglekelp,HERBALISM:85:115:135:185]
		This.GatherList:Set[Bruiseweed,HERBALISM:100:130:150:200]
		This.GatherList:Set[Wild Steelbloom,HERBALISM:115:145:165:215]
		This.GatherList:Set[Grave Moss,HERBALISM:120:150:170:220]
		This.GatherList:Set[Kingsblood,HERBALISM:125:155:175:225]
		This.GatherList:Set[Liferoot,HERBALISM:150:175:200:250]
		This.GatherList:Set[Fadeleaf,HERBALISM:160:190:210:260]
		This.GatherList:Set[Goldthorn,HERBALISM:170:205:220:270]
		This.GatherList:Set[Khadgar's Whisker,HERBALISM:185:210:235:285]
		This.GatherList:Set[Wintersbite,HERBALISM:195:225:245:295]
		This.GatherList:Set[Firebloom,HERBALISM:205:235:255:999]
		This.GatherList:Set[Purple Lotus,HERBALISM:210:240:260:999]
		This.GatherList:Set[Arthas' Tears,HERBALISM:220:250:279:999]
		This.GatherList:Set[Sungrass,HERBALISM:230:252:280:999]
		This.GatherList:Set[Blindweed,HERBALISM:235:260:285:999]
		This.GatherList:Set[Ghost Mushroom,HERBALISM:245:999:999:999]
		This.GatherList:Set[Gromsblood,HERBALISM:250:276:295:999]
		This.GatherList:Set[Golden Sansam,HERBALISM:260:280:999:999]
		This.GatherList:Set[Dreamfoil,HERBALISM:270:999:999:999]
		This.GatherList:Set[Mountain Silversage,HERBALISM:280:999:999:999]
		This.GatherList:Set[Plaguebloom,HERBALISM:285:999:999:999]
		This.GatherList:Set[Icecap,HERBALISM:290:999:999:999]
		This.GatherList:Set[Black Lotus,HERBALISM:300:999:999:999]
		This.GatherList:Set[Felweed,HERBALISM:300:999:999:999]
		This.GatherList:Set[Dreaming Glory,HERBALISM:315:999:999:999]
		This.GatherList:Set[Ragveil,HERBALISM:325:999:999:999]
		This.GatherList:Set[Flame Cap,HERBALISM:335:999:999:999]
		This.GatherList:Set[Terocone,HERBALISM:325:999:999:999]
		This.GatherList:Set[Ancient Lichen,HERBALISM:340:999:999:999]
		This.GatherList:Set[Netherbloom,HERBALISM:350:999:999:999]
		This.GatherList:Set[Nightmare Vine,HERBALISM:365:999:999:999]
		This.GatherList:Set[Mana Thistle,HERBALISM:375:999:999:999]
		
		This.GatherList:Set[Copper Vein,MINING:1:25:50:100]
		This.GatherList:Set[RethbanOre,MINING:1:25:45:100]
		This.GatherList:Set[Tin,MINING:65:90:115:165]
		This.GatherList:Set[IncendiciteOre,MINING:65:90:115:165]
		This.GatherList:Set[Silver,MINING:75:100:125:175]
		This.GatherList:Set[Lesser Bloodstone Ore,MINING:75:100:125:175]
		This.GatherList:Set[Iron,MINING:125:150:175:225]
		This.GatherList:Set[Indurium Ore,MINING:150:175:200:250]
		This.GatherList:Set[Gold,MINING:155:175:205:255]
		This.GatherList:Set[Mithril,MINING:175:200:225:275]
		This.GatherList:Set[Dark Iron,MINING:230:255:280:330]
		This.GatherList:Set[Truesilver,MINING:230:255:280:330]
		This.GatherList:Set[Small Thorium,MINING:245:270:295:345]
		This.GatherList:Set[Rich Thorium,MINING:275:300:325:999]
		This.GatherList:Set[Hakkari Thorium Vein,MINING:275:300:325:350]
		This.GatherList:Set[Fel Iron,MINING:300:325:350:999]
		This.GatherList:Set[Small Obsidian Chunk,MINING:305:330:355:999]
		This.GatherList:Set[Large Obsidian Chunk,MINING:305:330:355:999]
		This.GatherList:Set[Elementium Ore,MINING:375:999:999:999]
		This.GatherList:Set[Adamantite,MINING:325:350:999:999]
		This.GatherList:Set[Rich Adamantite,MINING:350:999:999:999]
		This.GatherList:Set[Eternium,MINING:375:999:999:999]
		This.GatherList:Set[Khorium,MINING:375:999:999:999]

		This.HarvestableMobs:Set["Apex","Mining"]
		This.HarvestableMobs:Set["Apexis Guardian","Mining"]
		This.HarvestableMobs:Set["Cragskaar","Mining"]
		This.HarvestableMobs:Set["Crazed Colossus","Mining"]
		This.HarvestableMobs:Set["Cyrukh the Firelord","Mining"]
		This.HarvestableMobs:Set["Enraged Crusher","Mining"]
		This.HarvestableMobs:Set["Enraged Earth Spirit","Mining"]
		This.HarvestableMobs:Set["Farahlon Breaker","Mining"]
		This.HarvestableMobs:Set["Farahlon Giant","Mining"]
		This.HarvestableMobs:Set["Gurok the Usurper","Mining"]
		This.HarvestableMobs:Set["Karrog","Mining"]
		This.HarvestableMobs:Set["Morcrush","Mining"]
		This.HarvestableMobs:Set["Mountain Colossus","Mining"]
		This.HarvestableMobs:Set["Netherock","Mining"]
		This.HarvestableMobs:Set["Raging Colossus","Mining"]
		This.HarvestableMobs:Set["Rumbling Earth-Heart","Mining"]
		This.HarvestableMobs:Set["Shattered Rumbler","Mining"]
		This.HarvestableMobs:Set["Son of Corok","Mining"]
		This.HarvestableMobs:Set["Sundered Rumbler","Mining"]
		This.HarvestableMobs:Set["Sundered Shard","Mining"]
		This.HarvestableMobs:Set["Sundered Thunderer","Mining"]
		This.HarvestableMobs:Set["Tavarok","Mining"]
		This.HarvestableMobs:Set["Tortured Earth Spirit","Mining"]
		This.HarvestableMobs:Set["Bog Giant","Herbalism"]
		This.HarvestableMobs:Set["Bog Lord","Herbalism"]
		This.HarvestableMobs:Set["Bog Overlord","Herbalism"]
		This.HarvestableMobs:Set["Farahlon Lasher","Herbalism"]
		This.HarvestableMobs:Set["Fungal Giant","Herbalism"]
		This.HarvestableMobs:Set["Hungarfen","Herbalism"]
		This.HarvestableMobs:Set["Infested Root-Walker","Herbalism"]
		This.HarvestableMobs:Set["Outraged Raven's Wood Sapling","Herbalism"]
		This.HarvestableMobs:Set["Raven's Wood Leafbeard","Herbalism"]
		This.HarvestableMobs:Set["Raven's Wood Stonebark","Herbalism"]
		This.HarvestableMobs:Set["Rotting Forest-Rager","Herbalism"]
		This.HarvestableMobs:Set["Starving Bog Lord","Herbalism"]
		This.HarvestableMobs:Set["Starving Fungal Giant","Herbalism"]
		This.HarvestableMobs:Set["Stronglimb Deeproot","Herbalism"]
		This.HarvestableMobs:Set["Talonsworn Forest-Rager","Herbalism"]
		This.HarvestableMobs:Set["Underbog Colossus","Herbalism"]
		This.HarvestableMobs:Set["Underbog Lord","Herbalism"]
		This.HarvestableMobs:Set["Underbog Lurker","Herbalism"]
		This.HarvestableMobs:Set["Underbog Shambler","Herbalism"]
		This.HarvestableMobs:Set["Withered Bog Lord","Herbalism"]
		This.HarvestableMobs:Set["Withered Giant","Herbalism"]
	}	

	member GetType(string s)
	{
		if ${This.GatherList.FirstKey(exists)}
		{
  	 	do
  		{
    		if ${s.Equal[${This.GatherList.CurrentKey}]}
    		{
					return ${This.GatherList.CurrentValue.Token[1,:]}
				}
  		}
  		while ${This.GatherList.NextKey(exists)}
		}
		return NONE
	}
	
	member GetLevel(string s)
	{
		if ${This.GatherList.FirstKey(exists)}
		{
  	 	do
  		{
    		if ${s.Equal[${This.GatherList.CurrentKey}]}
    		{
					return ${This.GatherList.CurrentValue.Token[2,:]}
				}
  		}
  		while ${This.GatherList.NextKey(exists)}
		}
		return 999
	}
	
	member SkinType(string CorpseName)
	{
		if ${This.HarvestableMobs.Element[${CorpseName}](exists)}
		{
			return ${This.HarvestableMobs.Element[${CorpseName}]}
		}
		return Skinning
	}
	
	member UIErrMsgTranslate(string s)
	{
		if ${This.UIErrMsgList.FirstKey(exists)}
		{
  	 	do
  		{
    		if ${s.Equal[${This.UIErrMsgList.CurrentKey}]}
    		{
					return ${This.UIErrMsgList.CurrentValue}
				}
				if ${s.Equal[${This.UIErrMsgList.CurrentValue}]}
    		{
					return ${This.UIErrMsgList.CurrentKey}
				}
  		}
  		while ${This.UIErrMsgList.NextKey(exists)}
		}
		return NULL
	}
	
}