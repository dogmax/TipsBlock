-- Suppresses microbutton pulsing and HelpTip alerts
-- (covers the yellow "You have unopened items in your collection" tip)

hooksecurefunc("MicroButtonPulse", function(self)
MicroButtonPulseStop(self)
end)

hooksecurefunc("MainMenuMicroButton_ShowAlert", function(self)
if HelpTip then
    HelpTip:HideAllSystem("MicroButtons")
    end
    end)
