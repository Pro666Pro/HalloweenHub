local GameName = "Halloween Hub 🎃 - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Slap Battles Halloween Hub", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-7000, -7000, -7000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end

	
local Tab = Window:MakeTab({
	Name = "Badge Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Get Hallow Jack",
	Default = false,
	Callback = function(Value)
_G.HallowJackFarm = Value
while _G.HallowJackFarm do
if workspace:FindFirstChild("Gravestone") then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Warning",Text = "Gravestone Found" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Gravestone" and v:FindFirstChild("ClickDetector") then
if game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel").Value > 9 then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
end
if game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel").Value < 9 then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Not Enough Killstreak To Auto Get Hallow Jack" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})
end
                    end
                end
elseif workspace:FindFirstChild("Gravestone") == nil and game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel").Value > 9 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,10,0)
end
task.wait()
end
	end    
})
