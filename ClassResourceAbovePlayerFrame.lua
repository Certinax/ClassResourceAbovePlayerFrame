local function AdjustFramePosition()
  PlayerFrameBottomManagedFramesContainer:ClearAllPoints();
  PlayerFrameBottomManagedFramesContainer:SetPoint("TOP", PlayerFrame, "TOP", 30, 10);
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", AdjustFramePosition)
