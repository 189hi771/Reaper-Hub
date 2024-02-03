-- Variables
local starterGui = game:GetService("StarterGui")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

starterGui:SetCore("SendNotification", {
    Title = "Reaper Hub",
    Text = "Reaper Hub has loaded",
    Icon = "rbxassetid://16218109692",
    Duration = 7
})

local Window = OrionLib:MakeWindow({Name = "Reaper Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "ReaperHub"})

local Tab = Window:MakeTab({
	Name = "Test",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:Init()
