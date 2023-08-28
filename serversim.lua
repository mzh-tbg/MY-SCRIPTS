local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("server sim", "DarkTheme")

local Tab = Window:NewTab("Blatant")


local Section = Tab:NewSection("Main")

-- vars 

local autoclick = true
local autoclick2 = true
local team  = game.Players[game.Players.LocalPlayer.name].team
local username = game.Players.LocalPlayer.name
local playerhead =  game.Players.LocalPlayer.Character.Head

-- normal upgrades

local up1 = true
local up2 = true
local up3 = true
local up4 = true
local up5 = true
local up6 = true
local up7 = true
local up8 = true
local up9 = true
local up10 = true
local up11 = true

-- Gold upgrades

local gold1 = true
local gold2 = true
local gold3 = true
local gold4 = true
local gold5 = true
local gold6 = true

-- code

Section:NewToggle("Auto Click Clicker", "", function(state)    
    if state then
            if autoclick == false then
            	autoclick = true
			end
            	while task.wait() do
            if autoclick == true then
                fireclickdetector(game:GetService("Workspace").TakenPlots[username].Button.Hit.Use);         
            end
            end
    else
        autoclick = false
    end
end)



local Tab = Window:NewTab("Auto Use Boosts")
local Section = Tab:NewSection("Cash")


Section:NewButton("10 Min of X2 Cash", "Uses X2 cash 10 min boost", function()
    

local args = {
    [1] = "10m",
    [2] = "C"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)

Section:NewButton("1 Hour Min of X2 Cash", "Uses X2 cash 1 Hour min boost", function()
    

local args = {
    [1] = "1h",
    [2] = "C"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)

Section:NewButton("24 Hours of X2 Cash", "Uses X2 cash 24 Hours boost", function()
    

local args = {
    [1] = "24h",
    [2] = "C"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)


local Section = Tab:NewSection("Gold")

Section:NewButton("10 Min of X2 Cash", "Uses X2 cash 10 min boost", function()
    

local args = {
    [1] = "10m",
    [2] = "G"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)

Section:NewButton("1 Hour Min of X2 Cash", "Uses X2 cash 1 Hour min boost", function()
    

local args = {
    [1] = "1h",
    [2] = "G"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)

Section:NewButton("24 Hours of X2 Cash", "Uses X2 cash 24 Hours boost", function()
    

local args = {
    [1] = "24h",
    [2] = "G"
}

game:GetService("ReplicatedStorage").Remotes.Boost:FireServer(unpack(args))
    
end)



local Tab = Window:NewTab("Auto Buy")
local Section = Tab:NewSection("Upgrades (The text on the pc gui will not update)")

Section:NewToggle("Better Servers", "Buys The Better Servers Upgrade", function(state)
    if state then
        if up1 == false then
        	up1 = true
		end
		while task.wait() do
			if up1 == true then
				local args = {
				  [1] = "better servers"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up1 = false
    end
end)



Section:NewToggle("better internet speed", "Buys The better internet speed Upgrade", function(state)
    if state then
        if up2 == false then
        	up2 = true
		end
		while task.wait() do
			if up2 == true then
				local args = {
				  [1] = "better internet speed"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up2 = false
    end
end)




Section:NewToggle("firewall", "Buys The firewall Upgrade", function(state)
    if state then
        if up3 == false then
        	up3 = true
		end
		while task.wait() do
			if up3 == true then
				local args = {
				  [1] = "firewall"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up3 = false
    end
end)



Section:NewToggle("autoclicker", "Buys The autoclicker Upgrade", function(state)
    if state then
        if up4 == false then
        	up4 = true
		end
		while task.wait() do
			if up4 == true then
				local args = {
				  [1] = "autoclicker"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up4 = false
    end
end)


Section:NewToggle("gold chance", "Buys The gold chance Upgrade", function(state)
    if state then
        if up5 == false then
        	up5 = true
		end
		while task.wait() do
			if up5 == true then
				local args = {
				  [1] = "gold chance"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up5 = false
    end
end)




Section:NewToggle("cloud hosting", "Buys The cloud hosting Upgrade", function(state)
    if state then
        if up6 == false then
        	up6 = true
		end
		while task.wait() do
			if up6 == true then
				local args = {
				  [1] = "cloud hosting"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up6 = false
    end
end)


Section:NewToggle("encryptor", "Buys The encryptor Upgrade", function(state)
    if state then
        if up7 == false then
        	up7 = true
		end
		while task.wait() do
			if up7 == true then
				local args = {
				  [1] = "encryptor"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up7 = false
    end
end)


Section:NewButton("trees", "Buys The trees Upgrade", function()
    local args = {
				  [1] = "trees"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
end)


Section:NewToggle("DDOS protector", "Buys The DDOS protector Upgrade", function(state)
    if state then
        if up9 == false then
        	up9 = true
		end
		while task.wait() do
			if up9 == true then
				local args = {
				  [1] = "DDOS protector"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        up9 = false
    end
end)

Section:NewToggle("upgrade hardware", "Buys The upgrade hardware Upgrade", function(state)
    if state then
        if up10 == false then
        	up10 = true
		end
		while task.wait() do
			if up10 == true then
				local args = {
				  [1] = "upgrade hardware"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			end
		end
				
				
    else
        up10 = false
    end
end)



Section:NewButton("Rebirth", "Buys The Rebirth Upgrade", function()
    local args = {
				  [1] = "Rebirth"
				}
				
				game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args));
			
end)


local Tab = Window:NewTab("Auto Buy (Gold)")
local Section = Tab:NewSection("Upgrades (The text on the pc gui will not update)")

Section:NewButton("Gold servers", "Buys The Gold Servers Upgrade", function()
    

local args = {
    [1] = "golden servers"
}

game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
    
			
end)

Section:NewToggle("Packager", "Buys The Packager Upgrade", function(state)
    if state then
        if g1 == false then
        	g1 = true
		end
		while task.wait() do
			if g1 == true then
				local args = {
				  [1] = "packager"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g1 = false
    end
end)

Section:NewToggle("golden DDOS protector", "Buys The golden DDOS protector Upgrade", function(state)
    if state then
        if g2 == false then
        	g2 = true
		end
		while task.wait() do
			if g2 == true then
				local args = {
				  [1] = "golden DDOS protector"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g2 = false
    end
end)


Section:NewToggle("Fiber Cables", "Buys The fiber cables Upgrade", function(state)
    if state then
        if g3 == false then
        	g3 = true
		end
		while task.wait() do
			if g3 == true then
				local args = {
				  [1] = "fiber cables"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g3 = false
    end
end)


Section:NewToggle("Upgrade Server CPU Speed", "Buys The Upgrade Server CPU Speed Upgrade", function(state)
    if state then
        if g4 == false then
        	g4 = true
		end
		while task.wait() do
			if g4 == true then
				local args = {
				  [1] = "upgrade server cpu speed"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g4 = false
    end
end)

Section:NewToggle("Upgrade Server CPU Speed", "Buys The Upgrade Server CPU Speed Upgrade", function(state)
    if state then
        if g5 == false then
        	g5 = true
		end
		while task.wait() do
			if g5 == true then
				local args = {
				  [1] = "upgrade server cpu speed"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g5 = false
    end
end)

Section:NewToggle("network redundancy", "Buys The network redundancy Upgrade", function(state)
    if state then
        if g6 == false then
        	g6 = true
		end
		while task.wait() do
			if g6 == true then
				local args = {
				  [1] = "network redundancy"
				}
				
				game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))
			end
		end
				
				
    else
        g = false
    end
end)











-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "network redundancy"
}

game:GetService("ReplicatedStorage").Remotes.GUpgrade:InvokeServer(unpack(args))









































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



