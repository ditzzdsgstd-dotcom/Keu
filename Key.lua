local correctKey = "YoxanXFree"
local scriptURL = "https://raw.githubusercontent.com/YoxanXHub/LegendOfSpeed/main/exe.lua" -- Ganti link ini

-- UI Setup
local gui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "YoxanXKeyUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "YoxanXHub | Key System"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.BackgroundTransparency = 1

local keyBox = Instance.new("TextBox", frame)
keyBox.Size = UDim2.new(1, -40, 0, 40)
keyBox.Position = UDim2.new(0, 20, 0, 50)
keyBox.PlaceholderText = "Enter key here"
keyBox.Font = Enum.Font.Gotham
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.TextSize = 14
keyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
keyBox.ClearTextOnFocus = false

Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 6)

local statusLabel = Instance.new("TextLabel", frame)
statusLabel.Size = UDim2.new(1, -40, 0, 20)
statusLabel.Position = UDim2.new(0, 20, 1, -30)
statusLabel.Text = "Waiting for key..."
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 12
statusLabel.BackgroundTransparency = 1
statusLabel.TextXAlignment = Enum.TextXAlignment.Left

local checkBtn = Instance.new("TextButton", frame)
checkBtn.Size = UDim2.new(1, -40, 0, 30)
checkBtn.Position = UDim2.new(0, 20, 0, 100)
checkBtn.Text = "CHECK"
checkBtn.Font = Enum.Font.GothamBold
checkBtn.TextSize = 14
checkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
checkBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)

Instance.new("UICorner", checkBtn).CornerRadius = UDim.new(0, 6)

-- Button click
checkBtn.MouseButton1Click:Connect(function()
    if keyBox.Text == correctKey then
        statusLabel.Text = "✅ Key accepted! Loading script..."
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet(scriptURL))()
    else
        statusLabel.Text = "❌ Invalid key!"
    end
end)
