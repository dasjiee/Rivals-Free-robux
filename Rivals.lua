local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "RivalsSimulator"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(290, 330)
frame.Position = UDim2.new(0.5, -145, 0.5, -165)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 15)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "RIVALS | GAMEPASS SHOP"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 18
title.Font = Enum.Font.GothamBold
title.Parent = frame

local input = Instance.new("TextBox")
input.Position = UDim2.fromOffset(15, 60)
input.Size = UDim2.new(1, -30, 0, 40)
input.PlaceholderText = "Enter Robux amount"
input.Text = ""
input.Parent = frame

local balance = Instance.new("TextLabel")
balance.Position = UDim2.fromOffset(15, 105)
balance.Size = UDim2.new(1, -30, 0, 35)
balance.BackgroundTransparency = 1
balance.Text = "Balance: 0 Robux"
balance.TextColor3 = Color3.fromRGB(0,255,120)
balance.Parent = frame

local apply = Instance.new("TextButton")
apply.Position = UDim2.fromOffset(15, 145)
apply.Size = UDim2.new(1, -30, 0, 38)
apply.Text = "APPLY ROBUX"
apply.Parent = frame

apply.MouseButton1Click:Connect(function()
    local n = tonumber(input.Text)
    if n and n >= 0 then
        balance.Text = "Balance: " .. n .. " Robux"
    end
end)

for i, name in ipairs({"VIP", "DOUBLE XP", "SPECIAL SKIN", "EXTRA LOADOUT"}) do
    local buy = Instance.new("TextButton")
    buy.Position = UDim2.fromOffset(15, 190 + (i-1)*32)
    buy.Size = UDim2.new(1, -30, 0, 28)
    buy.Text = "BUY | " .. name
    buy.Parent = frame

    buy.MouseButton1Click:Connect(function()
        buy.Text = "OWNED | " .. name
    end)
end
