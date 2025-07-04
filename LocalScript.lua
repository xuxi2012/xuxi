-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local zy = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ty = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local xjb = Instance.new("TextLabel")
local bb = Instance.new("TextLabel")
local zyfram = Instance.new("Frame")
local kfz = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local qqq = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local ndzlq = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local playerID = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local ty_2 = Instance.new("ScrollingFrame")
local fx = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Dex = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local IYFE = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_11 = Instance.new("UICorner")

local player = game:GetService("Players")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.265914917, 0, 0.209732905, 0)
Frame.Size = UDim2.new(0.5, 0, 0.579999983, 0)
Frame.Active = true
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.14212063, 0)
ScrollingFrame.Size = UDim2.new(0.200000003, 0, 0.77363807, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1.5, 0)

zy.Name = "zy"
zy.Parent = ScrollingFrame
zy.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
zy.BackgroundTransparency = 1.000
zy.BorderColor3 = Color3.fromRGB(49, 49, 49)
zy.BorderSizePixel = 0
zy.Size = UDim2.new(1, 0, 0.0786251873, 0)
zy.Font = Enum.Font.SourceSans
zy.Text = "主页"
zy.TextColor3 = Color3.fromRGB(255, 255, 255)
zy.TextScaled = true
zy.TextSize = 14.000
zy.TextWrapped = true
zy.MouseButton1Click:Connect(function()
	if zyfram.Visible then
		zyfram.Visible = false
	else
		zyfram.Visible = true
		ty_2.Visible = false
	end
end)

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = zy

ty.Name = "ty"
ty.Parent = ScrollingFrame
ty.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ty.BackgroundTransparency = 1.000
ty.BorderColor3 = Color3.fromRGB(49, 49, 49)
ty.BorderSizePixel = 0
ty.Position = UDim2.new(0, 0, 0.0799999982, 0)
ty.Size = UDim2.new(1, 0, 0.0799999982, 0)
ty.Font = Enum.Font.SourceSans
ty.Text = "通用"
ty.TextColor3 = Color3.fromRGB(255, 255, 255)
ty.TextScaled = true
ty.TextSize = 14.000
ty.TextWrapped = true
ty.MouseButton1Click:Connect(function()
	if ty_2.Visible then
		ty_2.Visible = false
	else
		ty_2.Visible = true
		zyfram.Visible = false
	end
end)

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = ty

xjb.Name = "xjb"
xjb.Parent = Frame
xjb.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
xjb.BorderColor3 = Color3.fromRGB(0, 0, 0)
xjb.BorderSizePixel = 0
xjb.Size = UDim2.new(0.200000003, 0, 0.14212063, 0)
xjb.Font = Enum.Font.SourceSans
xjb.Text = "徐脚本"
xjb.TextColor3 = Color3.fromRGB(0, 85, 255)
xjb.TextScaled = true
xjb.TextSize = 14.000
xjb.TextWrapped = true

bb.Name = "bb"
bb.Parent = Frame
bb.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
bb.BorderColor3 = Color3.fromRGB(0, 0, 0)
bb.BorderSizePixel = 0
bb.Position = UDim2.new(0, 0, 0.915758729, 0)
bb.Size = UDim2.new(0.200000003, 0, 0.084241271, 0)
bb.Font = Enum.Font.SourceSans
bb.Text = "版本：V3.0"
bb.TextColor3 = Color3.fromRGB(255, 170, 255)
bb.TextScaled = true
bb.TextSize = 14.000
bb.TextWrapped = true

zyfram.Name = "zyfram"
zyfram.Parent = Frame
zyfram.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
zyfram.BorderColor3 = Color3.fromRGB(0, 0, 0)
zyfram.BorderSizePixel = 0
zyfram.Position = UDim2.new(0.200000003, 0, 0, 0)
zyfram.Size = UDim2.new(0.800000012, 0, 1, 0)

kfz.Name = "kfz"
kfz.Parent = zyfram
kfz.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
kfz.BorderColor3 = Color3.fromRGB(0, 0, 0)
kfz.BorderSizePixel = 0
kfz.Position = UDim2.new(-2.46109494e-07, 0, 0, 0)
kfz.Size = UDim2.new(1, 0, 0.173009098, 0)
kfz.Font = Enum.Font.SourceSans
kfz.Text = "开发者：徐老坐"
kfz.TextColor3 = Color3.fromRGB(255, 255, 255)
kfz.TextScaled = true
kfz.TextSize = 14.000
kfz.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = kfz

qqq.Name = "qqq"
qqq.Parent = zyfram
qqq.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
qqq.BorderColor3 = Color3.fromRGB(0, 0, 0)
qqq.BorderSizePixel = 0
qqq.Position = UDim2.new(-2.46109494e-07, 0, 0.208080411, 0)
qqq.Size = UDim2.new(1, 0, 0.173009098, 0)
qqq.Font = Enum.Font.SourceSans
qqq.Text = "QQ群：1030473092"
qqq.TextColor3 = Color3.fromRGB(255, 255, 255)
qqq.TextScaled = true
qqq.TextSize = 14.000
qqq.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = qqq

ndzlq.Name = "ndzlq"
ndzlq.Parent = zyfram
ndzlq.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ndzlq.BorderColor3 = Color3.fromRGB(0, 0, 0)
ndzlq.BorderSizePixel = 0
ndzlq.Position = UDim2.new(-2.46109494e-07, 0, 0.42401439, 0)
ndzlq.Size = UDim2.new(1, 0, 0.173009098, 0)
ndzlq.Font = Enum.Font.SourceSans
ndzlq.Text = "你的注入器："
ndzlq.TextColor3 = Color3.fromRGB(255, 255, 255)
ndzlq.TextScaled = true
ndzlq.TextSize = 14.000
ndzlq.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = ndzlq

playerID.Name = "playerID"
playerID.Parent = zyfram
playerID.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
playerID.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerID.BorderSizePixel = 0
playerID.Position = UDim2.new(-2.46109494e-07, 0, 0.634617567, 0)
playerID.Size = UDim2.new(1, 0, 0.173009098, 0)
playerID.Font = Enum.Font.SourceSans
playerID.Text = "你的ID："..player.LocalPlayer.UserId
	playerID.TextColor3 = Color3.fromRGB(255, 255, 255)
playerID.TextScaled = true
playerID.TextSize = 14.000
playerID.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = playerID

ty_2.Name = "ty"
ty_2.Parent = Frame
ty_2.Active = true
ty_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ty_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ty_2.BorderSizePixel = 0
ty_2.Position = UDim2.new(0.200000003, 0, 0, 0)
ty_2.Size = UDim2.new(0.800000012, 0, 1, 0)
ty_2.Visible = false
ty_2.CanvasSize = UDim2.new(0, 0, 3, 0)

fx.Name = "fx"
fx.Parent = ty_2
fx.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
fx.BorderColor3 = Color3.fromRGB(0, 0, 0)
fx.BorderSizePixel = 0
fx.Position = UDim2.new(0, 0, 0.14212063, 0)
fx.Size = UDim2.new(0.974999964, 0, 0.0559137017, 0)
fx.Font = Enum.Font.SourceSans
fx.Text = "??v3"
fx.TextColor3 = Color3.fromRGB(255, 255, 255)
fx.TextScaled = true
fx.TextSize = 14.000
fx.TextWrapped = true
fx.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet "https://raw.githubusercontent.com/xuxi2012/xuxi/refs/heads/main/flyv3.lua")()
end)

UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = fx

UIListLayout.Parent = ty_2
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00999999978, 0)

Dex.Name = "Dex"
Dex.Parent = ty_2
Dex.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dex.BorderSizePixel = 0
Dex.Position = UDim2.new(0, 0, 0.14212063, 0)
Dex.Size = UDim2.new(0.974999964, 0, 0.0559137017, 0)
Dex.Font = Enum.Font.SourceSans
Dex.Text = "Dex??"
Dex.TextColor3 = Color3.fromRGB(255, 255, 255)
Dex.TextScaled = true
Dex.TextSize = 14.000
Dex.TextWrapped = true
Dex.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

UICorner_9.CornerRadius = UDim.new(1, 0)
UICorner_9.Parent = Dex

IYFE.Name = "IY FE"
IYFE.Parent = ty_2
IYFE.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
IYFE.BorderColor3 = Color3.fromRGB(0, 0, 0)
IYFE.BorderSizePixel = 0
IYFE.Position = UDim2.new(0, 0, 0.14212063, 0)
IYFE.Size = UDim2.new(0.974999964, 0, 0.0559137017, 0)
IYFE.Font = Enum.Font.SourceSans
IYFE.Text = "IY????"
IYFE.TextColor3 = Color3.fromRGB(255, 255, 255)
IYFE.TextScaled = true
IYFE.TextSize = 14.000
IYFE.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(1, 0)
UICorner_10.Parent = IYFE

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0, 0, 0.456026047, 0)
ImageButton.Size = UDim2.new(0.0604838692, 0, 0.122801319, 0)
ImageButton.Image = "rbxassetid://94958808343431"
ImageButton.Active = true
ImageButton.Draggable = true
ImageButton.MouseButton1Click:Connect(function()
	if Frame.Visible then
		Frame.Visible = false
	else
		Frame.Visible = true
	end
end)

UICorner_11.CornerRadius = UDim.new(1, 0)
UICorner_11.Parent = ImageButton