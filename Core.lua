
local f = CreateFrame('Frame', nil, UIParent)

local function moveZAF()
	if not InCombatLockdown() then
		UIPARENT_MANAGED_FRAME_POSITIONS.ZoneAbilityFrame = nil
		ZoneAbilityFrame:ClearAllPoints()
		ZoneAbilityFrame:SetAllPoints(ExtraActionButton1)
		f:UnregisterEvent('PLAYER_ENTERING_WORLD')
		f:UnregisterEvent('PLAYER_REGEN_ENABLED')
	end
end

f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:RegisterEvent('PLAYER_REGEN_ENABLED')
f:SetScript('OnEvent', moveZAF)