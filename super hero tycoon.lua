local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Superhero Tycoon Script", "DarkTheme")

local Tab = Window:NewTab("Blatant")


local Section = Tab:NewSection("Main")

local autoclick = true
local autoclick2 = true
local team  = game.Players[game.Players.LocalPlayer.name].team
 local  playerhead =  game.Players.LocalPlayer.Character.Head
	
Section:NewToggle("Auto Click First Clicker", "Auto Clicks First Clicker  On the First Floor", function(state)    
    if state then
            if autoclick == false then
            	autoclick = true
			end
            	while task.wait() do
            if autoclick == true then
                fireclickdetector(game:GetService("Workspace").Tycoons.Tycoons[team.name].Essentials.Drop0.Model.clicker.ClickDetector);         
            end
            end
    else
        autoclick = false
    end
end)


Section:NewToggle("Auto Click Second Clicker", "Auto Clicks Second Clicker  On the Second Floor", function(state)    
    if state then
            if autoclick2 == false then
            	autoclick2 = true
			end
            	while task.wait() do
            if autoclick2 == true then
                fireclickdetector(game:GetService("Workspace").Tycoons.Tycoons[team.name].clicker.ClickDetector);         
            end
            end
    else
        autoclick2 = false
    end
end)

Section:NewButton("Collect Cash", "Auto Collects Cash", function()
    
 for i, v in pairs(game:GetService("Workspace").Tycoons.Tycoons[team.name].Essentials.Giver:GetDescendants()) do
 	if v.Name == "TouchInterest" then
 		firetouchinterest(playerhead, v.Parent, 0)
 		wait(0.1)
 		firetouchinterest(playerhead, v.Parent, 1)
 		break;
	end
end
     
end)


Section:NewButton("Get A Cash Crate", "Opens A Cash Crate", function()
    for i, v in pairs(game:GetService("Workspace").Crates:GetDescendants()) do
 	if v.Name == "TouchInterest" and v.Parent then
 		firetouchinterest(playerhead, v.Parent, 0)
 		wait(0.1)
 		firetouchinterest(playerhead, v.Parent, 1)
	end
end
end)














local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Speed And Jump Power")
	
		
Section:NewSlider("Speed", "Changes  Your Player Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump", "Changes  Your Player Jump Power", 500, 0, function(j) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewButton("Reset Speed", "Goes Back To 16 Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section:NewButton("Reset Jump", "Goes Back To 50 Jump", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)





local Tab = Window:NewTab("Settings")

local Section = Tab:NewSection("Settings")

Section:NewKeybind("Keybind to Hide the UI", "Press To Change Keybind ", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
