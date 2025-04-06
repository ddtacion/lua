local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "My Rayfield GUI",
    LoadingTitle = "Rayfield Example",
    LoadingSubtitle = "by You",
    ConfigurationSaving = {
       Enabled = false,
    },
    Discord = {
       Enabled = false,
    },
    KeySystem = false,
})

local MainTab = Window:CreateTab("Main", 4483362458) -- รูปไอคอนจาก Roblox ID

MainTab:CreateButton({
   Name = "Speed x2",
   Callback = function()
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
   end,
})

MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Callback = function(state)
       getgenv().infjump = state
       game:GetService("UserInputService").JumpRequest:Connect(function()
           if getgenv().infjump then
               game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
           end
       end)
   end,
})

MainTab:CreateSlider({
   Name = "Set WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
