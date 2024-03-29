PLUGIN.name = "Compass";
PLUGIN.author = "CW: Gr4Ss, NS: DrodA";
PLUGIN.desc = "Adds Compass on your HUD";

local function InitLanguages()
	local langkey = "english";
	do
		local langTable =
		{
			toggleCompass = "Toggle Compass",

		};

		table.Merge(nut.lang.stored[langkey], langTable);
	end;

	local langkey = "russian";
	do
		local langTable =
		{
			toggleCompass = "Активировать компас",

		};

		table.Merge(nut.lang.stored[langkey], langTable);
	end;
end;

function PLUGIN:InitializedPlugins()
	InitLanguages();
end;

if (CLIENT) then
	surface.CreateFont("CompassFont",
	{
		font    = "Time News Roman",
		size    = 25,
		weight  = 300,
		antialias = true,
		shadow = false
	});

	PLUGIN.compassText = {};
	PLUGIN.compassText[90] = "N";
	PLUGIN.compassText[135] = "NW";
	PLUGIN.compassText[180] = "W";
	PLUGIN.compassText[-135] = "SW";
	PLUGIN.compassText[-90] = "S";
	PLUGIN.compassText[-45] = "SE";
	PLUGIN.compassText[0] = "E";
	PLUGIN.compassText[45] = "NE";

	NUT_CVAR_COMPASS = CreateClientConVar("nut_compass", 1, true, true);
	
	function PLUGIN:HUDPaint()
		local client = LocalPlayer();
		if !IsValid(client) or !client:Alive() then return end;
		if (client:GetInfoNum("nut_compass", 0) == 0) then return end;

		local scrW, scrH = ScrW(), ScrH();
		
		local width = scrW / 8;
		local height = 30;

		--draw.RoundedBox(8, (scrW / 2) - (width / 2), scrH - 40, width, height, Color(0, 0, 0, 180));

		local finalText = "";
		local yaw = math.floor(client:GetAngles().y);

		for i = yaw - 33, yaw + 33 do
			local y = i;
			if i > 180 then
				y = -360 + i;
			elseif i < -180 then
				y = 360 + i;
			end;

			if (self.compassText[y]) then
				finalText = self.compassText[y]..finalText;
			else
				finalText = " "..finalText;
			end;
		end;

		draw.DrawText(finalText, "CompassFont", scrW/2, scrH - 30, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER);
	end;

	function PLUGIN:SetupQuickMenu(menu)
		local buttonCompass = menu:addCheck(L"toggleCompass", function(panel, state)
			if (state) then
				RunConsoleCommand("nut_compass", "1");
			else
				RunConsoleCommand("nut_compass", "0");
			end;
		end, NUT_CVAR_COMPASS:GetBool());

		menu:addSpacer();
	end;
end;