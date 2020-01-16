local function moveZAF()
	if not InCombatLockdown() then
		UIPARENT_MANAGED_FRAME_POSITIONS.ZoneAbilityFrame = nil
		ZoneAbilityFrame:ClearAllPoints()
		ZoneAbilityFrame:SetAllPoints(ExtraActionButton1)
	end
end

local f = CreateFrame('Frame', nil, self)
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:RegisterEvent('PLAYER_REGEN_ENABLED')
f:SetScript('OnEvent', moveZAF)