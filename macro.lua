

superhuman = false
	plr = game.Players.LocalPlayer
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key == "z" and superhuman == false then
			superhuman = true
--[[
   By Peyton
   Created for Mad City but should work in other games as well.
--]]
local LocalPlayer, mt, index, newindex = game.Players.LocalPlayer, getrawmetatable(game)
index = mt.__index
newindex = mt.__newindex
local Values = {
   WalkSpeed = 16,
   JumpPower = 50,
   Velocity = Vector3.new(0,0,0)
}

setreadonly(mt, false)
mt.__index = newcclosure(function(t,k)
   return (not checkcaller() and Values[k] or index(t,k))
end)
mt.__newindex = newcclosure(function(t,k,v)
   if not checkcaller() and Values[k] then return end
   newindex(t,k,v)
end)
setreadonly(mt, true)

local Humanoid = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
Humanoid.WalkSpeed = _G.Speed
Humanoid.JumpPower = 50

		elseif key == "z" and superhuman == true then
			superhuman = false
--[[
   By Peyton
   Created for Mad City but should work in other games as well.
--]]
local LocalPlayer, mt, index, newindex = game.Players.LocalPlayer, getrawmetatable(game)
index = mt.__index
newindex = mt.__newindex
local Values = {
   WalkSpeed = 16,
   JumpPower = 50,
   Velocity = Vector3.new(0,0,0)
}

setreadonly(mt, false)
mt.__index = newcclosure(function(t,k)
   return (not checkcaller() and Values[k] or index(t,k))
end)
mt.__newindex = newcclosure(function(t,k,v)
   if not checkcaller() and Values[k] then return end
   newindex(t,k,v)
end)
setreadonly(mt, true)

local Humanoid = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50

		end
	end)
