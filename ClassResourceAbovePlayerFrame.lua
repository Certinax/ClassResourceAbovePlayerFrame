local function AdjustFramePosition()
  PlayerFrameBottomManageFramesContainer:ClearAllPoints();
  PlayerFrameBottomManageFramesContainer:SetPoint("TOP", PlayerFrame, "TOP", 30, 10);
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", AdjustFramePosition)
