
#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required




public Plugin myinfo = 
{
	name = "rawr discord",
	author = "titan",
	description = "a plugin for rawrhops to print discord link to chat :^)",
	version = "1.0",
	url = "https://github.com/titanrawr"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_discord", Command_Discord, "Opens discord through MOTD (will usually automatically open in discord app)");
//    RegConsoleCmd("sm_discordlink", Command_DiscordLink, "Prints Discord link to chat");
	
}
/*
public Action Command_DiscordLink(int client, int args)
{	
	if (args > 0)
	{
		ReplyToCommand(client, "[SM] Usage: sm_discord");
	}
    char discordhex[] = "\x07888FF2h\x07858CF2t\x07828AF2t\x078087F2p\x077D85F2:\x077A83F2/\x077880F2/\x07757EF2d\x07727CF2i\x077079F2s\x076D77F2c\x076A75F2o\x076772F2r\x076570F2d\x07626EF2.\x075F6BF2g\x075D69F2g\x075A67F2/\x07BABAFFmnRDRj5bBX";
    PrintToChat(client, discordhex);
    //TODO: make message not print to console (?)
	return Plugin_Handled;
}
*/

public Action Command_Discord(int client, int args)
{	
	if (args > 0)
	{
		ReplyToCommand(client, "[SM] Usage: sm_discord");
	}
    char discordurl[] = "http://discord.gg/mnRDRj5bBX";
    ShowMOTDPanel(client, "discord", discordurl ,MOTDPANEL_TYPE_URL);
    return Plugin_Handled;
}
