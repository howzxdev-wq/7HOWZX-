local p = game:GetService("Players").LocalPlayer
local ts = game:GetService("TweenService")

-- GUI
local g = Instance.new("ScreenGui", game.CoreGui)
local f = Instance.new("Frame", g)
f.Size, f.Position, f.BackgroundColor3, f.AnchorPoint = UDim2.new(0,0,0,0), UDim2.new(.5,-150,.5,-100), Color3.fromRGB(20,20,20), Vector2.new(.5,.5)
Instance.new("UICorner", f).CornerRadius = UDim.new(0,18)

-- Label
local l = Instance.new("TextLabel", f)
l.Size, l.BackgroundTransparency, l.Font, l.Text, l.TextSize = UDim2.new(1,0,0,50), 1, Enum.Font.GothamBold, "7Howzx hub", 32

-- Botão
local b = Instance.new("TextButton", f)
b.Size, b.Position, b.BackgroundColor3, b.Font, b.Text, b.TextSize, b.TextColor3 = UDim2.new(.7,0,0,40), UDim2.new(.15,0,.65,0), Color3.fromRGB(45,45,45), Enum.Font.GothamBold, "TIVAR SCRIPT", 22, Color3.new(1,1,1)
Instance.new("UICorner", b).CornerRadius = UDim.new(0,12)

-- Abertura
ts:Create(f,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,300,0,200)}):Play()

-- Cor animada
local c = {Color3.fromRGB(255,0,80),Color3.fromRGB(0,200,255),Color3.fromRGB(80,255,80),Color3.fromRGB(255,255,80),Color3.fromRGB(255,70,255)}
spawn(function() while wait(.3) do for _,v in ipairs(c) do l.TextColor3=v wait(.3) end end end)

-- Kick
b.MouseButton1Click:Connect(function()
    game.StarterGui:SetCore("SendNotification",{Title="7Howzx hub",Text="Kkkk VC LEVOU KICK PELO 7Howzx🥵",Duration=4})
    wait(1) p:Kick("Kkkk VC LEVOU KICK PELO 7Howzx🥵")
end)
