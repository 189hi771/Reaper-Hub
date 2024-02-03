-- Variables
local starterGui = game:GetService("StarterGui")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

starterGui:SetCore("SendNotification", {
    Title = "Reaper Hub",
    Text = "Reaper Hub has loaded",
    Icon = "rbxassetid://16218109692",
    Duration = 7
})

local Window = OrionLib:MakeWindow({Name = "Reaper Hub", HidePremium = false, IntroText = "Reaper Hub", SaveConfig = false, ConfigFolder = "ReaperHub"})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local SpeedSlider = PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 500,
 Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		game.Players.Character.Humanoid.WalkSpeed = Value
	end    
})



OrionLib:Init()
