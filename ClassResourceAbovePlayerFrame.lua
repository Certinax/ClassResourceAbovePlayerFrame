local function AdjustFramePosition()
  PlayerFrameBottomManagedFramesContainer:ClearAllPoints();
  PlayerFrameBottomManagedFramesContainer:SetPoint("TOP", PlayerFrame, "TOP", 30, 10);
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("SPELLS_CHANGED")
frame:SetScript("OnEvent", function(self, _)
  AdjustFramePosition()
  self:UnregisterEvent("SPELLS_CHANGED")
end)
