-- TipsBlock
-- Hides the yellow microbutton help tips (e.g. "You have unopened items in your collection")
-- and the flashing glow on the Collections button.
-- Visual only: never hooks action-bar or micro button functions, to avoid taint.

-- 1) Hide microbutton help tips as soon as they appear
if HelpTip then
    hooksecurefunc(HelpTip, "Show", function(self, parent, info)
    if info and info.system == "MicroButtons" then
        HelpTip:Hide(parent, info.text)
        end
        end)
    end

    -- 2) Keep the Collections button's flashing glow invisible
    local function MuteGlow(region)
    if not region then return end
        region:SetAlpha(0)
        hooksecurefunc(region, "Show", function(self)
        self:SetAlpha(0)
        end)
        hooksecurefunc(region, "SetAlpha", function(self, a)
        if a ~= 0 then self:SetAlpha(0) end
            end)
        end

        if CollectionsMicroButton then
            MuteGlow(CollectionsMicroButton.FlashBorder)
            MuteGlow(CollectionsMicroButton.FlashContent)
            end
