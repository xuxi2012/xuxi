-- 将此脚本放在StarterPlayerScripts或StarterGui中

local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- 创建主屏幕GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VirtualKeyboard"
ScreenGui.Parent = PlayerGui

-- 创建主框架
local MainFrame = Instance.new("Frame")
MainFrame.Name = "KeyboardFrame"
MainFrame.Size = UDim2.new(0.8, 0, 0.5, 0)
MainFrame.Position = UDim2.new(0.1, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MainFrame.BackgroundTransparency = 0.2
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- 创建输入显示框
local InputBox = Instance.new("TextBox")
InputBox.Name = "InputBox"
InputBox.Size = UDim2.new(0.9, 0, 0.15, 0)
InputBox.Position = UDim2.new(0.05, 0, 0.05, 0)
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.BackgroundTransparency = 0.8
InputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
InputBox.TextSize = 20
InputBox.Text = ""
InputBox.ClearTextOnFocus = false
InputBox.Parent = MainFrame

-- 键盘布局 (QWERTY)
local keyboardLayout = {
    {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "Backspace"},
    {"Tab", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]", "\\"},
    {"Caps", "A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'", "Enter"},
    {"Shift", "Z", "X", "C", "V", "B", "N", "M", ",", ".", "/", "Shift"},
    {"Space"}
}

-- 键大小和间距
local keyWidth = 0.07
local keyHeight = 0.15
local keySpacing = 0.01

-- 特殊键的宽度乘数
local specialKeyWidths = {
    Backspace = 2,
    Tab = 1.5,
    Caps = 1.7,
    Enter = 1.7,
    Shift = 2.2,
    Space = 6
}

-- 创建键盘行
local function createKeyboardRow(rowKeys, rowNumber, totalRows)
    local rowFrame = Instance.new("Frame")
    rowFrame.Name = "Row" .. rowNumber
    rowFrame.Size = UDim2.new(0.95, 0, 1/totalRows, 0)
    rowFrame.Position = UDim2.new(0.025, 0, (rowNumber-1)/totalRows, 0)
    rowFrame.BackgroundTransparency = 1
    rowFrame.Parent = MainFrame
    
    local totalWidth = 0
    for _, key in ipairs(rowKeys) do
        local widthMultiplier = specialKeyWidths[key] or 1
        totalWidth = totalWidth + (keyWidth * widthMultiplier) + keySpacing
    end
    totalWidth = totalWidth - keySpacing -- 移除最后一个间距
    
    local currentX = 0
    for _, key in ipairs(rowKeys) do
        local widthMultiplier = specialKeyWidths[key] or 1
        local keyButton = Instance.new("TextButton")
        keyButton.Name = key
        keyButton.Size = UDim2.new(keyWidth * widthMultiplier / totalWidth, 0, 0.9, 0)
        keyButton.Position = UDim2.new(currentX / totalWidth, 0, 0.05, 0)
        keyButton.Text = key
        keyButton.TextScaled = true
        keyButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        keyButton.BackgroundTransparency = 0.5
        keyButton.BorderSizePixel = 0
        
        -- 特殊键样式
        if specialKeyWidths[key] then
            keyButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
        end
        
        -- 空格键样式
        if key == "Space" then
            keyButton.Text = ""
        end
        
        -- 按钮点击事件
        keyButton.MouseButton1Click:Connect(function()
            if key == "Backspace" then
                InputBox.Text = string.sub(InputBox.Text, 1, -2)
            elseif key == "Space" then
                InputBox.Text = InputBox.Text .. " "
            elseif key == "Shift" then
                -- 这里可以添加大小写切换功能
            elseif key == "Enter" then
                -- 提交输入
                print("Submitted: " .. InputBox.Text)
                -- 可以在这里添加提交逻辑，比如发送聊天消息
                InputBox.Text = ""
            elseif key == "Tab" then
                InputBox.Text = InputBox.Text .. "    "
            else
                InputBox.Text = InputBox.Text .. key
            end
        end)
        
        keyButton.Parent = rowFrame
        currentX = currentX + (keyWidth * widthMultiplier) + keySpacing
    end
end

-- 创建所有键盘行
for i, row in ipairs(keyboardLayout) do
    createKeyboardRow(row, i, #keyboardLayout)
end

-- 关闭按钮
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0.1, 0, 0.1, 0)
CloseButton.Position = UDim2.new(0.9, 0, -0.1, 0)
CloseButton.Text = "X"
CloseButton.TextScaled = true
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- 显示/隐藏键盘的快捷键 (例如按K键)
local UserInputService = game:GetService("UserInputService")
local keyboardVisible = true

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.K then
        keyboardVisible = not keyboardVisible
        ScreenGui.Enabled = keyboardVisible
    end
end)