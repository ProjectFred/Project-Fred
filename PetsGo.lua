local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Project Fred")

--AutoTab
local Auto = Window:NewTab("Auto Roll")
local AutoRoll = Auto:NewSection("Auto Roll")
local Auto2 = Window:NewTab("Auto Fish")
local AutoFish = Auto2:NewSection("Auto Fish")
local AutoCollectFishermanLoot = Auto2:NewSection("Auto Collect Fisherman Loot")
local Auto3 = Window:NewTab("Auto Mine")
local AutoMine = Auto3:NewSection("Auto Mine")
local Auto4 = Window:NewTab("Auto Theive")
local AutoTheive = Auto4:NewSection("Auto Theive")
local AutoBuy = Window:NewTab("Auto Buy")
local AutoBuyMerchants = AutoBuy:NewSection("Merchants")


--AutoRoll Toggle
AutoRoll:NewToggle("Auto Roll Pets", "AutoRolls", function(v)
    getgenv().Eggs_Roll = v
    while true do
        if getgenv().Eggs_Roll == false then return end
        game:GetService("ReplicatedStorage").Network.Eggs_Roll:InvokeServer()
        wait()
    end
end)

--AutoFish Toggle
AutoFish:NewToggle("Auto Fish Default", "Starter Fishing Area", function(v)
    getgenv().AutoFish = v
    while getgenv().AutoFish do
        game:GetService("ReplicatedStorage").Network.Fishing_Fish:InvokeServer("Default")
        game:GetService("ReplicatedStorage").Network.Fishing_Success:FireServer()
        task.wait()
    end
end)

AutoFish:NewToggle("Auto Fish Ice", "Ice Fishing Area", function(v)
    getgenv().AutoFish = v
    while getgenv().AutoFish do
        game:GetService("ReplicatedStorage").Network.Fishing_Fish:InvokeServer("Ice")
        game:GetService("ReplicatedStorage").Network.Fishing_Success:FireServer()
        task.wait()
    end
end)

AutoFish:NewToggle("Auto Fish Corrupted", "Corrupted Fishing Area", function(v)
    getgenv().AutoFish = v
    while getgenv().AutoFish do
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer("Corrupted")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer()        
        task.wait()
    end
end)

AutoFish:NewToggle("Auto Fish Boating", "Boating Fishing Area", function(v)
    getgenv().AutoFish = v
    while getgenv().AutoFish do
        game:GetService("ReplicatedStorage").Network.Fishing_Fish:InvokeServer("Boating")
        game:GetService("ReplicatedStorage").Network.Fishing_Success:FireServer()
        task.wait()
    end
end)

AutoCollectFishermanLoot:NewToggle("Auto Collect Fisherman Loot Every 30 Secs", "Auto Collects The Loot Gained From The Fisherman Every 30 Seconds", function(v)
    getgenv().AutoFish = v
    while getgenv().AutoFish do
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_FishermanClaim"):InvokeServer()
        task.wait(30)
    end
end)

--AutoMine Toggle
AutoMine:NewToggle("Auto Mine Dirt", "Auto Mines Dirt", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(6)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Stone", "Auto Mines Stone", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(5)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Copper/Bronze", "Auto Mines Copper/Bronze", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(3)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Iron", "Auto Mines Iron", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(2)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Gold", "Auto Mines Gold", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(1)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Emerald", "Auto Mines Emerald", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(4)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Obsidian", "Auto Mines Obsidian", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(10)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

AutoMine:NewToggle("Auto Mine Runic", "Auto Mines Runic", function(v)
    if v then
        getgenv().AutoMine = true
        while getgenv().AutoMine do
            game:GetService("ReplicatedStorage").Network.Mining_SetState:InvokeServer(true)
            game:GetService("ReplicatedStorage").Network.Mining_Attack:InvokeServer(8)
            task.wait()
        end
    else  -- If the toggle is off
        getgenv().AutoMine = false
    end
end)

--Thieving Toggles
AutoTheive:NewButton("Busted Shack", "AutoThieves Busted Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 1 | Busted Shack"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Wooden Stall", "AutoThieves Wooden Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 2 | Wooden Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Stone Stall", "AutoThieves Stone Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 3 | Stone Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Marble Stall", "AutoThieves Marble Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 4 | Marble Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Bronze Stall", "AutoThieves Bronze Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 5 | Bronze Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Advanced Stall", "AutoThieves Advanced Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 6 | Advanced Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Golden Stall", "AutoThieves Golden Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 7 | Golden Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Royal Stall", "AutoThieves Royal Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 8 | Royal Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

AutoTheive:NewButton("Hacker Stall", "AutoThieves Hacker Stall", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = game:GetService("ReplicatedStorage").__DIRECTORY.ThievingObjects["ThievingObject 9 | Hacker Stall"].Model.Pad.PadGlow.Position

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

--AutoBuy
AutoBuyMerchants:NewToggle("Auto Buy Vending Machine", "Buys Everything From The Vending Machine", function(v)
    if v then
        getgenv().AutoBuyVendingMachine = true
        while getgenv().AutoBuyVendingMachine do
            local args = {
            [1] = "PotionVendingMachine"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
            task.wait(20)
        end
    else  -- If the toggle is off
        getgenv().AutoBuyVendingMachine = false
    end
end)

AutoBuyMerchants:NewToggle("Auto Buy Standard Merchant", "Buys Everything From The Standard Merchant", function(v)
    if v then
        getgenv().StandardMerchant = true
        while getgenv().StandardMerchant do    
local args = {
    [1] = "StandardMerchant",
    [2] = 1
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "StandardMerchant",
    [2] = 2
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "StandardMerchant",
    [2] = 3
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "StandardMerchant",
    [2] = 4
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "StandardMerchant",
    [2] = 5
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "StandardMerchant",
    [2] = 6
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
            task.wait(360)
        end
    else  -- If the toggle is off
        getgenv().StandardMerchant = false
    end
end)

AutoBuyMerchants:NewToggle("Auto Buy Ice Merchant", "Buys Everything From The Ice Merchant", function(v)
    if v then
        getgenv().AutoBuyIceFishingMerchant = true
        while getgenv().AutoBuyIceFishingMerchant do
local args = {
    [1] = "IceFishingMerchant",
    [2] = 1
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "IceFishingMerchant",
    [2] = 2
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "IceFishingMerchant",
    [2] = 3
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "IceFishingMerchant",
    [2] = 4
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "IceFishingMerchant",
    [2] = 5
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
local args = {
    [1] = "IceFishingMerchant",
    [2] = 6
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
            task.wait(5)
        end
    else  -- If the toggle is off
        getgenv().AutoBuyIceFishingMerchant = false
    end
end)
