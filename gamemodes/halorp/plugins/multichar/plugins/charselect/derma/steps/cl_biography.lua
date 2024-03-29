local PANEL = {}

local HIGHLIGHT = Color(255, 255, 255, 50)

function PANEL:Init()
	self.nameLabel = self:addLabel("Your full name")
	self.nameLabel:SetZPos(0)

	self.name = self:addTextEntry("name")
	self.name:SetTall(48)
	self.name:SetZPos(1)
end

function PANEL:addTextEntry(contextName)
	local entry = self:Add("DTextEntry")
	entry:Dock(TOP)
	entry:SetFont("nutCharButtonFont")
	entry.Paint = self.paintTextEntry
	entry:DockMargin(0, 4, 0, 16)
	entry.OnValueChange = function(_, value)
		self:setContext(contextName, string.Trim(value))
	end
	entry.contextName = contextName
	entry.OnKeyCodeTyped = function(name, keyCode)
		if (keyCode == KEY_TAB) then
			entry:onTabPressed()
			return true
		end
	end
	entry:SetUpdateOnType(true)
	return entry
end

function PANEL:onDisplay()
	local faction = self:getContext("faction")
	assert(faction, "faction not set before showing name input")
	local default, override =
		hook.Run("GetDefaultCharName", LocalPlayer(), faction)

	if (override) then
		self.nameLabel:SetVisible(false)
		self.name:SetVisible(false)
	else
		if (default and not self:getContext("name")) then
			self:setContext("name", default)
		end
		self.nameLabel:SetVisible(true)
		self.name:SetVisible(true)
		self.name:SetText(self:getContext("name", ""))
	end

	--self.desc:SetText(self:getContext("desc", ""))

	-- Requesting focus same frame causes issues with docking.
	self.name:RequestFocus()
end

function PANEL:validate()
	if (self.name:IsVisible()) then
		local res = {self:validateCharVar("name")}
		if (res[1] == false) then
			return unpack(res)
		end
	end
	
	self:setContext("desc", "If you see this, tell toast :(")	-- Do not remove this. This tricks NS into thinking our player has chosen a legal description without fucking with the NS code too much
	return self:validateCharVar("desc")

end

-- self refers to the text entry
function PANEL:paintTextEntry(w, h)
	nut.util.drawBlur(self)
	surface.SetDrawColor(0, 0, 0, 100)
	surface.DrawRect(0, 0, w, h)
	self:DrawTextEntryText(color_white, HIGHLIGHT, HIGHLIGHT)
end

vgui.Register("nutCharacterBiography", PANEL, "nutCharacterCreateStep")
