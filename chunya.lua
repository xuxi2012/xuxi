loadstring(game:HttpGet "https://raw.githubusercontent.com/xuxi2012/xuxi/refs/heads/main/tabel.lua")()

local player = game.Players.LocalPlayer
local function a()
    if player and table.find(tabel, player.UserId) then
    player:Kick("你没有加入免费玩表单，请在官方交流群中的群通知里找原因")
    end
end

a()
