local whitelist = "https://raw.githubusercontent.com/xuxi2012/xuxi/refs/heads/main/wh.lua"
local players = game:GetService("Players")
local player = players.LocalPlayer


players.PlayerAdded:Connect(function()
	if table.find(whitelist,player.UserId) then
		player:Kick("你没有在白名单中，加QQ：3998396522")
	end
end)
