local whitelist = {
111111111,
}

local player = game.Players.LocalPlayer
local function a()
    if player and table.find(whitelist, player.UserId) then
       player:Kick("我的肖淳雅")
    else
       player:Kick("肖淳雅")
    end
end


game.Players.PlayerAdded:Connect(a)
a()