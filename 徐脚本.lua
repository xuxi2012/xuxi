local CoreGui = game:GetService("StarterGui") 
  
 CoreGui:SetCore("SendNotification", { 
     Title = "", 
     Text = "欢迎你用徐脚本", 
     Duration = 10,  
 })
 CoreGui:SetCore("SendNotification", { 
     Title = "提示", 
     Text = "正在加载，请稍等", 
     Duration = 10,  
 })
wait(3)

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local a = Instance.new("TextButton")

local player = game.Players.LocalPlayer
ScreenGui.Parent = game.CoreGui

frame.Name = "frame"
frame.Parent = ScreenGui
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
frame.Position = UDim2.new(0.347, 0, 0.135, 0)
frame.Size = UDim2.new(0.721, 0, 0.826, 0)
frame.Active = true
frame.Draggable =true


a.Name = ""
a.Parent = ScreenGui
a.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
a.TextColor3 = Color3.fromRGB(250, 250, 250)
a.Position = UDim2.new(0, 0, 0.511, 0)
a.Size = UDim2.new(0.125, 0, 0.083, 0)
a.Active = true
a.Draggable =true
a.Text = "打开/关闭"
a.TextScaled = true
a.MouseButton1Click:Connect(function()
if frame.Visible == true then
frame.Visible = false
--ScreenGui.Parent = nil
else
frame.Visible = true
end
end)
local aa = Instance.new("TextLabel")

aa.Name = "肖淳雅1"
aa.Parent = frame
aa.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
aa.BorderColor3 = Color3.fromRGB(30, 30, 32)
aa.TextColor3 = Color3.fromRGB(0, 250, 250)
aa.Size = UDim2.new(0.2, 0, 0.1, 0)
aa.Position = UDim2.new(0, 0, 0, 0)
aa.TextScaled = true
aa.Text = "徐脚本"

local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")
local img1 = Instance.new("ImageLabel")
local frame1 = Instance.new("Frame")
local frame2 = Instance.new("Frame")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabel10 = Instance.new("TextLabel")
local TextLabel11 = Instance.new("TextLabel")
--local TextLabel16 = Instance.new("TextLabel")
local TextLabel20 = Instance.new("TextLabel")
local TextLabel22 = Instance.new("TextLabel")
local button10 = Instance.new("TextButton")
local button11 = Instance.new("TextButton")
local button20 = Instance.new("TextButton")
local button22 = Instance.new("TextButton")
local frame3 = Instance.new("Frame")
local frame7 = Instance.new("Frame")

frame1.Name = "首页"
frame1.Parent = frame
frame1.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
frame1.Size = UDim2.new(0.755, 0, 0.782, 0)
frame1.Position = UDim2.new(0.244, 0, 0.058, 0)
frame1.Visible = false

frame2.Name = "徐脚本1"
frame2.Parent = frame
frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
frame2.Size = UDim2.new(0.752, 0, 0.941, 0)
frame2.Position = UDim2.new(0.245, 0, 0.058, 0)
frame2.Visible = false

frame3.Name = "Butter脚本"
frame3.Parent = frame
frame3.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
frame3.Size = UDim2.new(0.752, 0, 0.9, 0)
frame3.Position = UDim2.new(0.245, 0, 0.058, 0)
frame3.Visible = false

frame7.Parent = frame
frame7.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
frame7.Size = UDim2.new(0.752, 0, 0.9, 0)
frame7.Position = UDim2.new(0.245, 0, 0.058, 0)
frame7.Visible = false


TextLabel1.Name = "作者"
TextLabel1.Text = "作者: 徐老坐"
TextLabel1.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel1.TextColor3 = Color3.fromRGB(250, 250, 250)
TextLabel1.TextScaled = true
TextLabel1.Size = UDim2.new(1, 0, 0.128, 0)
TextLabel1.Parent = frame1
TextLabel1.Position = UDim2.new(0, 0, 0, 0)

TextLabel2.Name = "官方交流群"
TextLabel2.Parent = frame1
TextLabel2.Text = "官方交流群: 1030473092"
TextLabel2.TextScaled = true
TextLabel2.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel2.TextColor3 = Color3.fromRGB(250, 250, 250)
TextLabel2.Size = UDim2.new(1, 0, 0.128, 0)
TextLabel2.Position = UDim2.new(0, 0, 0.13, 0)

TextLabel3.Name = "玩家ID"
TextLabel3.Text = "玩家ID: "..player.UserId
TextLabel3.Parent = frame1
TextLabel3.Position = UDim2.new(0, 0, 0.257, 0)
TextLabel3.Size = UDim2.new(1, 0, 0.128, 0)
TextLabel3.TextColor3 = Color3.fromRGB(250, 250, 250)
TextLabel3.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel3.TextScaled = true

--[[local function getInjector()
    if syn and syn.protect_gui then
        return "Synapse X"
    elseif identifyexecutor and identifyexecutor() == "ScriptWare" then
        return "Script-Ware"
    elseif KRNL_LOADED then
        return "Krnl"
    elseif is_sirhurt_closure then
        return "SirHurt"
    elseif secure_load then
        return "ProtoSmasher"
    elseif pebc_execute then
        return "Electron"
    elseif getexecutorname then
        return getexecutorname() or "Unknown Executor"
    else
        return "Roblox Official Client (无注入器)"
    end
end

TextLabel16.Name = "c"
--TextLabel16.Text = "当前注入器："..getInjector()
TextLabel16.Parent = frame1
TextLabel16.Position = UDim2.new(0, 0, 0.384, 0)
TextLabel16.Size = UDim2.new(1, 0, 0.128, 0)
TextLabel16.TextColor3 = Color3.fromRGB(250, 250, 250)
TextLabel16.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel6.TextScaled = true]]--

TextLabel10.Name = "提示"
TextLabel10.Parent = frame2
TextLabel10.Text = "如果你没有被加入白名单，请加作者qq"
TextLabel10.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel10.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel10.TextScaled = true
TextLabel10.Size = UDim2.new(1, 0, 0.1, 0)
TextLabel10.Position = UDim2.new(0, 0, 0.1, 0)
TextLabel11.TextScaled = true
TextLabel11.Name = "提示1"
TextLabel11.Parent = frame2
TextLabel11.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel11.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel11.Size = UDim2.new(1.002, 0, 0.106, 0)
TextLabel11.Position = UDim2.new(0, 0, 0.22, 0)
TextLabel11.Text = "qq：3998396522"
TextLabel11.TextScaled = true

TextLabel20.Parent = frame
TextLabel20.Text = "版本号：v1.0"
TextLabel20.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel20.TextColor3 = Color3.fromRGB(250, 250, 250)
TextLabel20.BorderColor3 = Color3.fromRGB(30, 30, 32)
TextLabel20.Position = UDim2.new(0, 0, 0.9, 0)
TextLabel20.Size = UDim2.new(0.1, 0, 0.1, 0)
TextLabel20.TextScaled = true

TextLabel22.Parent = frame7
TextLabel22.Text = "获得免费用徐脚本--伐木资格的方式，\n请看官方交流群中的群通知"
TextLabel22.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextLabel22.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel22.Position = UDim2.new(0, 0, 0, 0)
TextLabel22.Size = UDim2.new(1, 0, 0.2, 0)
TextLabel22.TextScaled = true


button1.Name = "首页开关"
button1.Parent = frame
button1.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button1.TextColor3 = Color3.fromRGB(250, 250, 250)
button1.Size = UDim2.new(0.24, 0, 0.1, 0)
button1.Text = "首页"
button1.TextScaled = true
button1.Position = UDim2.new(0, 0, 0.214, 0)
button1.MouseButton1Click:Connect(function()
if frame1.Visible == true then
frame1.Visible = false
else
frame1.Visible = true
frame2.Visible = false
frame3.Visible = false
frame7.Visible = false
end
end)


button2.Name = "徐脚本"
button2.Parent = frame
button2.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button2.Size = UDim2.new(0.24, 0, 0.1, 0)
button2.TextColor3 = Color3.fromRGB(250, 250, 250)
button2.Text = "徐脚本--伐木"
button2.TextScaled = true
button2.Position = UDim2.new(0, 0, 0.33, 0)
button2.MouseButton1Click:Connect(function()
if frame2.Visible == true then
frame2.Visible = false
else
frame2.Visible = true
frame1.Visible = false
frame3.Visible = false
frame7.Visible = false
end
end)


button3.Parent = frame2
button3.Position = UDim2.new()
button3.Size = UDim2.new(1, 0, 0.1, 0)
button3.TextScaled = true
button3.Text = "点击打开徐脚本--伐木"
button3.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button3.TextColor3 = Color3.fromRGB(250, 250, 250)
button3.BorderColor3 = Color3.fromRGB(0, 255, 255)
button3.MouseButton1Click:Connect(function()
loadstring(game:HttpGet "https://raw.githubusercontent.com/xuxi2012/xuxi/refs/heads/main/xu.lua")()
ScreenGui.Parent = nil
end)

button10.Parent = frame
button10.Position = UDim2.new(0, 0, 0.46, 0)
button10.Size = UDim2.new(0.24, 0, 0.1, 0)
button10.TextScaled = true
button10.Text = "Butter V3脚本"
button10.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button10.TextColor3 = Color3.fromRGB(250, 250, 250)
button10.MouseButton1Click:Connect(function()
if frame3.Visible == true then
frame3.Visible = false
else
frame3.Visible = true
frame2.Visible = false
frame1.Visible = false
frame7.Visible = false
end
end)

button11.Parent = frame3
button11.Position = UDim2.new()
button11.Size = UDim2.new(1, 0, 0.1, 0)
button11.Text = "打开Butter脚本"
button11.TextScaled = true
button11.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button11.TextColor3 = Color3.fromRGB(250, 250, 250)
button11.BorderColor3 = Color3.fromRGB(0, 255, 255)
button11.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter/main/Butter%20V3%20Testers.txt'))("early access")
wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter-Cuties/main/Other/Maid'))("early access")
ScreenGui.Parent = nil
end)

button20.Parent = frame
button20.TextScaled = true
button20.Position = UDim2.new(0, 0, 0.59, 0)
button20.Size = UDim2.new(0.24, 0, 0.1, 0)
button20.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button20.TextColor3 = Color3.fromRGB(250, 250, 250)
button20.Text = "免费活动"
button20.MouseButton1Click:Connect(function()
if frame7.Visible == true then
frame7.Visible = false
else
frame7.Visible = true
frame1.Visible = false
frame2.Visible = false
frame3.Visible = false
end
end)

button22.Parent = frame7
button22.TextScaled = true
button22.Position = UDim2.new(0, 0, 0.3, 0)
button22.Size = UDim2.new(1, 0, 0.1, 0)
button22.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
button22.TextColor3 = Color3.fromRGB(250, 250, 250)
button22.Text = "点击打开免费徐脚本--伐木"
button22.BorderColor3 = Color3.fromRGB(0, 255, 255)
button22.MouseButton1Click:Connect(function()
--loadstring(game:HttpGet "https://raw.githubusercontent.com/xuxi2012/xuxi/refs/heads/main/freexu.lua")()
ScreenGui.Parent = nil
end)
