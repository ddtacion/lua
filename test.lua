local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "My Hack GUI", HidePremium = false, SaveConfig = false, ConfigFolder = "MyConfig"})

OrionLib:MakeNotification({
    Name = "Hi!",
    Content = "Welcome to my GUI!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Speed x2",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
})

Tab:AddToggle({
    Name = "ESP Toggle",
    Default = false,
    Callback = function(Value)
        print("ESP: ", Value)
    end
})
