local function AdjustFramePosition()
  PlayerFrameBottomManagedFramesContainer:ClearAllPoints();
  PlayerFrameBottomManagedFramesContainer:SetPoint("TOP", PlayerFrame, "TOP", 30, 10);
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function(self, _)
  AdjustFramePosition()
  self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)
